//
//  RealityView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct RealityView: View {
    
    @Binding var isShowRealityView: Bool
    @ObservedObject var vm: ProjectARViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch vm.indexAR {
            case 1:
                ARViewContainer()
            case 2:
                Scene2ARViewContainer()
            default:
                BackgroundView()
                
            }
            Button {
                isShowRealityView = false
            } label: {
                Image(systemName: "filemenu.and.selection")
                Text("Menu")
            }
            .padding()
            .buttonStyle(.bordered)
                    
        }
        .ignoresSafeArea()
    }
}










struct RealityView_Previews: PreviewProvider {
    static var previews: some View {
        RealityView(isShowRealityView: .constant(false), vm: ProjectARViewModel())
.previewInterfaceOrientation(.portrait)
    }
}
