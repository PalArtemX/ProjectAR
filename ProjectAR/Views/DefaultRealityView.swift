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
            // MARK: - BackgroundView
            BackgroundView()
            
            // MARK: - Message
            Image("AR")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .opacity(0.5)
                .offset(y: -30)
            Text("Soon")
                .font(.largeTitle)
                .foregroundColor(Color.themeColor.green)
                .fontWeight(.bold)
                .opacity(0.8)
                .padding()
        }
    }
}










struct DefaultRealityView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultRealityView()
    }
}
