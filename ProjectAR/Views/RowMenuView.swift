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
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.themeColor.blue.opacity(0.9), lineWidth: 5)

            VStack {
                HStack {
                    image
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .font(.title3)
            .foregroundColor(.themeColor.green)
        }
        .frame(width: 200, height: 150, alignment: .center)
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
