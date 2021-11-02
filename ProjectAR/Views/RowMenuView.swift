//
//  RowMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 28.10.2021.
//

import SwiftUI

struct RowMenuView: View {
    let systemName: String
    let image: String
    @ObservedObject var vm: ARViewModel
    
    var body: some View {
        ZStack {
            // MARK: - RoundedRectangle
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.themeColor.blue.opacity(0.9), lineWidth: 1)
            
            VStack {
                // MARK: - The Number In The Circle
                HStack {
                    Image(systemName: "\(systemName)")
                    Spacer()
                }
                // MARK: - Scene Image
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .opacity(0.9)
            }
            .padding()
            .font(.title3)
            .foregroundColor(.themeColor.green)
        }
        .frame(width: 250, height: 200, alignment: .center)
        .padding()
    }
}










struct RowAR_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RowMenuView(systemName: "1.circle", image: "1", vm: ARViewModel())
            RowMenuView(systemName: "1.circle", image: "1", vm: ARViewModel())
                .preferredColorScheme(.dark)
        }
    }
}
