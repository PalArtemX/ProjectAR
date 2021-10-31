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
                .stroke(Color.themeColor.blue.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 360 : 0))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.themeColor.green.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 20 : 340))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.themeColor.red.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 320 : 40))
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.themeColor.yellow.opacity(0.1), lineWidth: uiScreen > 300 ? 100 : 50)
                .rotationEffect(Angle(degrees: isShow ? 60 : 300))
            
            VStack(alignment: .leading) {
                Text("AR")
                    .fontWeight(.light)
                    .foregroundColor(.themeColor.textLogo)
                    
                Text("Scenes")
                    .foregroundColor(.themeColor.textLogo)
                    .fontWeight(.black)
            }
            .font(.largeTitle)
            
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
