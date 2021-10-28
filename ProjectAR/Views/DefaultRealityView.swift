//
//  DefaultRealityView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 28.10.2021.
//

import SwiftUI

struct DefaultRealityView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            Text("Soon")
                .font(.largeTitle)
                .foregroundColor(Color.themeColor.green)
                .fontWeight(.bold)
                .opacity(0.8)
        }
    }
}










struct DefaultRealityView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultRealityView()
    }
}
