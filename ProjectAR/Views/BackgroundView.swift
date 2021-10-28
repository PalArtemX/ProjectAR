//
//  BackgroundView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct BackgroundView: View {
    
    @State private var isShow = true
    var uiScreen = UIScreen.main.bounds.width * 0.60
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(.blue.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 360 : 0))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.red.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 20 : 340))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.green.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 320 : 40))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.yellow.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 60 : 300))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(.indigo.opacity(0.02), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 280 : 80))
            
            
        }
        .frame(width: uiScreen, height: uiScreen)
        .onAppear {
            withAnimation(Animation
                            .linear(duration: 100)
                            .repeatForever(autoreverses: false)) {
                isShow.toggle()
            }
        }
    }
}









struct backgroundView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BackgroundView()
            BackgroundView()
                .preferredColorScheme(.dark)
        }
    }
}
