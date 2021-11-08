//
//  BackgroundView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import SwiftUI

struct BackgroundView: View {
    
    @State private var isShow = true
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                // MARK: - RoundedRectangles
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.themeColor.blue.opacity(0.5), lineWidth: 20)
                    .rotationEffect(Angle(degrees: isShow ? 360 : 0))
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.themeColor.green.opacity(0.2), lineWidth: 20)
                    .rotationEffect(Angle(degrees: isShow ? 20 : 340))
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.themeColor.red.opacity(0.2), lineWidth: 20)
                    .rotationEffect(Angle(degrees: isShow ? 320 : 40))
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.themeColor.yellow.opacity(0.2), lineWidth: 20)
                    .rotationEffect(Angle(degrees: isShow ? 60 : 300))
                
                // MARK: - Logo
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
            .frame(width: geo.size.width * 0.5, height: geo.size.height * 0.5)
            //.frame(width: geo.size.width, height: geo.size.height) // centre
            .onAppear {
                withAnimation(
                    Animation
                        .linear(duration: 75)
                        .repeatForever(autoreverses: false)) {
                            isShow.toggle()
                        }
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
