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
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(.blue.opacity(0.1), lineWidth: 50)
                .frame(width: 300, height: 300)
                .rotationEffect(Angle(degrees: isShow ? 180 : 45))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.red.opacity(0.1), lineWidth: 50)
                .frame(width: 300, height: 300)
                .rotationEffect(Angle(degrees: isShow ? 0 : 360))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.green.opacity(0.1), lineWidth: 50)
                .frame(width: 300, height: 300)
                .rotationEffect(Angle(degrees: isShow ? 45 : 360))
            RoundedRectangle(cornerRadius: 25)
                .stroke(.yellow.opacity(0.1), lineWidth: 50)
                .frame(width: 300, height: 300)
                .rotationEffect(Angle(degrees: isShow ? 360 : 45))
            
            
        }
        .onAppear {
            withAnimation(Animation
                            .linear(duration: 50)
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
                .previewInterfaceOrientation(.portrait)
            BackgroundView()
                .preferredColorScheme(.dark)
        }
    }
}
