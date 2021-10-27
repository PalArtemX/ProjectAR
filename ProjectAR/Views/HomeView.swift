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
    
    var body: some View {
        
        if isShowRealityView {
            
            // RealityView
            RealityView(isShowRealityView: $isShowRealityView)
        } else {
            // MainMenuView
            MainMenuView(isShowRealityView: $isShowRealityView)
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
