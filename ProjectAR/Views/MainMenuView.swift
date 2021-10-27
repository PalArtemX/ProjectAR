//
//  MainMenuView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct MainMenuView: View {
    
    @Binding var isShowRealityView: Bool
    
    var body: some View {
        VStack {
            Text("Main Menu")
                .font(.largeTitle)
            
            Button {
                isShowRealityView = true
            } label: {
                Text("AR View")
            }

        }
    }
}










struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(isShowRealityView: .constant(false))
    }
}
