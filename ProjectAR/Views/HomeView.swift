//
//  HomeView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 26.10.2021.
//

import SwiftUI

struct HomeView : View {
    
    @StateObject var vm = ARViewModel()
    
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            // MARK: - RealityView
            if vm.reality.isShowRealityView {
                RealityView(vm: vm)
            }
            // MARK: - MainMenuView
            if !vm.reality.isShowRealityView {
                MainMenuView(vm: vm)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}










#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
