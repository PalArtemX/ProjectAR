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
                .stroke(.blue.opacity(0.5), lineWidth: 5)
                .rotationEffect(Angle(degrees: isShowRotation ? 0 : 360))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.yellow.opacity(0.5), lineWidth: 5)
                .rotationEffect(Angle(degrees: isShowRotation ? 360 : 0))
             
            VStack {
                HStack {
                    image
                    Text("Scene")
                }
                Spacer()
                Text(name)
            }
            .padding()
            .font(.headline)
            .foregroundColor(.themeColor.textColor)
        }
        .frame(width: 150, height: 150, alignment: .center)
        .padding()
    }
}










struct RowAR_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RowMenuView(image: Image(systemName: "1.circle"), name: "One", isShowRotation: .constant(false))
            RowMenuView(image: Image("1"), name: "One", isShowRotation: .constant(false))
                .preferredColorScheme(.dark)
        }
    }
}
