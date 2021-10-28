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
                // MARK: - Scene 1
            case 1:
                Scene1ARView()
                // MARK: - Scene 2
            case 2:
                Scene2ARView()
                // MARK: - Default Scene
            default:
                DefaultRealityView()
                
            }
            // MARK: - Menu Button
            VStack {
                Button {
                    vm.reality.isShowRealityView = false
                } label: {
                    Image(systemName: "filemenu.and.selection")
                    Text("Menu")
                }
                .buttonStyle(.bordered)
                .padding(.bottom, 50)
            }
            
        }
        .ignoresSafeArea()
    }
}










struct RealityView_Previews: PreviewProvider {
    static var previews: some View {
        RealityView(vm: ProjectARViewModel())
    }
}
