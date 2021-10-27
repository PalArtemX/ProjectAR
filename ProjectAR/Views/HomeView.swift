//
//  HomeView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 26.10.2021.
//

import SwiftUI
import RealityKit

struct HomeView : View {
    
    @State var ArModedel = true
    
    var body: some View {
        VStack {
            RealityView()
            Spacer()
            Button {
                ArModedel.toggle()
            } label: {
                Text("AR")
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
