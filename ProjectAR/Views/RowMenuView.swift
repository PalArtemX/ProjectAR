//
//  RowMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 28.10.2021.
//

import SwiftUI

struct RowMenuView: View {
    let image: Image
    @ObservedObject var vm: ProjectARViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(.blue.opacity(0.5), lineWidth: 5)
                .rotationEffect(Angle(degrees: 0))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.red.opacity(0.5), lineWidth: 5)
                .rotationEffect(Angle(degrees: 15))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.green.opacity(0.5), lineWidth: 5)
                .rotationEffect(Angle(degrees: 30))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.yellow.opacity(0.5), lineWidth: 5)
                .rotationEffect(Angle(degrees: 45))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.indigo.opacity(0.5), lineWidth: 5)
                .rotationEffect(Angle(degrees: 60))

             
            VStack {
                HStack {
                    image
                    Text("Scene")
                }
                Spacer()
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
            RowMenuView(image: Image(systemName: "1.circle"), vm: ProjectARViewModel())
            RowMenuView(image: Image(systemName: "1.circle"), vm: ProjectARViewModel())
                .preferredColorScheme(.dark)
        }
    }
}
