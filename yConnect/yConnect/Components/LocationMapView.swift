//
//  LocationMapView.swift
//  yConnect
//
//  Created by Alumno on 13/10/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let address: String

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator

        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { placemarks, error in
            if let placemark = placemarks?.first, let location = placemark.location {
                let annotation = MKPointAnnotation()
                annotation.coordinate = location.coordinate
                mapView.addAnnotation(annotation)

                let region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
                mapView.setRegion(region, animated: true)
            }
        }

        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView

        init(_ parent: MapView) {
            self.parent = parent
        }

        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
            view.canShowCallout = true
            return view
        }
    }
}

struct LocationMapView: View {
    var address: String
    
    var body: some View {
        MapView(address: address)
            .frame(width: 350, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                VStack{
                    Spacer()
                    HStack {
                        Text("Ubicación")
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10)
                        .background(Color.white.opacity(0.85))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    .padding(.leading, 10)
                }
            )
            .shadow(radius: 2)
            .padding(5)
    }
}

#Preview {
    LocationMapView(address: "Luis Elizondo 203, Altavista. Monterrey, N.L.")
}
