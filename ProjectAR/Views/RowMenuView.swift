//
//  RowMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 28.10.2021.
//

import SwiftUI

struct RowMenuView: View {
    let image: Image
    let name: String
    @Binding var isShowRotation: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(.blue.opacity(0.1), lineWidth: 5)
                .rotationEffect(Angle(degrees: isShowRotation ? 360 : 0))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.red.opacity(0.1), lineWidth: 5)
                .rotationEffect(Angle(degrees: isShowRotation ? 20 : 340))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.green.opacity(0.1), lineWidth: 5)
                .rotationEffect(Angle(degrees: isShowRotation ? 320 : 40))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.yellow.opacity(0.1), lineWidth: 5)
                .rotationEffect(Angle(degrees: isShowRotation ? 60 : 300))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.indigo.opacity(0.05), lineWidth: 5)
                .rotationEffect(Angle(degrees: isShowRotation ? 280 : 80))
            
            VStack {
                
                image
                Text(name)
                    
            }
        }
        .frame(width: 150, height: 150, alignment: .center)
    }
}










struct RowAR_Previews: PreviewProvider {
    static var previews: some View {
        RowMenuView(image: Image(systemName: "plus"), name: "Name", isShowRotation: .constant(true))
    }
}
