//
//  RealityView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct RealityView: View {
    
    @Binding var isShowRealityView: Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ARViewContainer()
                .edgesIgnoringSafeArea(.all)
            
            
            Button {
                isShowRealityView = false
            } label: {
                Text("Main Menu")
            }

        }
    }
}










struct RealityView_Previews: PreviewProvider {
    static var previews: some View {
        RealityView(isShowRealityView: .constant(false))
    }
}
