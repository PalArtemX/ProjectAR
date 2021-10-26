//
//  HomeView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 26.10.2021.
//

import SwiftUI
import RealityKit

struct HomeView : View {
    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
    }
}










#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
