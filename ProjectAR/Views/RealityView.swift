//
//  RealityView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct RealityView: View {

    @ObservedObject var vm: ProjectARViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            switch vm.reality.indexAR {
            case 1:
                Scene1ARView()
            case 2:
                Scene2ARView()
            default:
                BackgroundView()
                
            }
            // MARK: - Menu Button
            Button {
                vm.reality.isShowRealityView = false
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
        RealityView(vm: ProjectARViewModel())
    }
}
