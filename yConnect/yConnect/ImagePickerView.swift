//
//  ImagePickerView.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI
import PhotosUI

struct ImagePickerView: View{
    @State private var selectedItem: PhotosPickerItem?
    @State private var selectedImage: Image?
    @State private var selectedItems: [PhotosPickerItem] = []
    @State private var selectedImages: [Image] = []
    
    var body: some View{
        
        PhotosPicker(selection: $selectedItems, maxSelectionCount: 5, selectionBehavior: .continuousAndOrdered, matching: .images){
            Label("Selecciona las imágenes", systemImage: "photo")
        }
        .onChange(of: selectedItems){ oldItems, newItems in
            selectedImages.removeAll()
            newItems.forEach{ newItem in
                Task{
                    if let image = try? await newItem.loadTransferable(type: Image.self){
                        selectedImages.append(image)
                    }
                }
            }
        }
        if selectedImages.isEmpty{
            ContentUnavailableView("No hay imágenes", systemImage: "photo.on.rectangle", description: Text("Seleccione imágenes para mostrar"))
        } else{
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(0..<selectedImages.count, id:\.self){ index in
                        selectedImages[index]
                            .resizable()
                            .scaledToFit()
                            .frame(height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .padding(.horizontal, 20)
                            .containerRelativeFrame(.horizontal)
                    }
                }
            }
            .frame(height: 300)
            .photosPickerStyle(.inline)
            .ignoresSafeArea()
            .photosPickerAccessoryVisibility(.visible, edges: .bottom)
        }
    }
}

#Preview {
    ImagePickerView()
}
