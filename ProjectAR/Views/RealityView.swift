//
//  RealityView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct RealityView: View {
    
    @ObservedObject var vm: ARViewModel
    
    var body: some View {
        ZStack {
            switch vm.reality.indexAR {
                // MARK: - Scene 1
            case 1:
                Scene1ARView()
                ChevronView()
                // MARK: - Scene 2
            case 2:
                Scene2ARView()
                ChevronView()
                // MARK: - Scene 3
            case 3:
                Scene3ARView()
                ChevronView()
                // MARK: - Default Scene
            default:
                DefaultRealityView()
                
            }
            // MARK: - Menu Button
            ButtonMenuView(vm: vm)
        }
        .ignoresSafeArea()
    }
}










struct RealityView_Previews: PreviewProvider {
    static var previews: some View {
        RealityView(vm: ARViewModel())
    }
}
