//
//  ToolBarComponent.swift
//  yConnect
//
//  Created by Alumno on 13/10/23.
//

import SwiftUI

struct ToolBarComponent: View {
    var organization: Organization
    var body: some View {
        HStack(spacing: 5){
            CallButtonView(phoneNumber: "\(organization.Telephone)", icon: "phone.fill")
            ShareButtonView(shareText: "\(organization.Name), Tel: \(organization.Telephone), Correo: \(organization.Email)", icon: "arrowshape.turn.up.right.fill")
            DirectionButtonView(address: "\(organization.Location)", icon: "map.fill")
        }
    }
}

#Preview {
    ToolBarComponent(organization: Organization.dummy)
}
