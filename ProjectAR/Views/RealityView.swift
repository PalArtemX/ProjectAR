//
//  RealityView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct RealityView: View {
    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
    }
}










struct RealityView_Previews: PreviewProvider {
    static var previews: some View {
        RealityView()
    }
}
