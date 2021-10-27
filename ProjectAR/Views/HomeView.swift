//
//  HomeView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 26.10.2021.
//

import SwiftUI
import RealityKit

struct HomeView : View {
    
    @State private var isShowRealityView = false
    @StateObject var vm = ProjectARViewModel()
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            if isShowRealityView {
                
                // RealityView
                RealityView(isShowRealityView: $isShowRealityView, vm: vm)
            } else {
                // MainMenuView
                MainMenuView(isShowRealityView: $isShowRealityView, vm: vm)
            }
        }
    }
}










#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
