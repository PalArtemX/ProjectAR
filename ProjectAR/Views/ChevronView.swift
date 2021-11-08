//
//  ChevronView.swift
//  ProjectAR
//
//  Created by Artem Paliutin on 08.11.2021.
//

import SwiftUI

// The ChevronView appears for a few seconds together with the RealityView
struct ChevronView: View {
    
    @State private var isShowChevron = false
    @State private var isShowOpacity = false
    
    var body: some View {
        
        VStack {
            // MARK: - chevron.up
            Image(systemName: "chevron.up")
                .offset(y: isShowChevron ? 30 : 0)
            Spacer()
            HStack {
                // MARK: - chevron.left
                Image(systemName: "chevron.left")
                    .offset(x: isShowChevron ? 30 : 0)
                Spacer()
                // MARK: - Message
                VStack {
                    Image(systemName: "arkit")
                        .font(.largeTitle)
                    Text("Move the phone slightly above the horizontal surface until the object appears")
                        .padding()
                }
                    .multilineTextAlignment(.center)
                Spacer()
                // MARK: - chevron.right
                Image(systemName: "chevron.right")
                    .offset(x: isShowChevron ? -30 : 0)
            }
            Spacer()
            // MARK: - chevron.down
            Image(systemName: "chevron.down")
                .offset(y: isShowChevron ? -30 : 0)
        }
        .opacity(isShowOpacity ? 0 : 1)
        .padding()
        
        // MARK: - onAppear
        .onAppear {
            // Animation chevron
            withAnimation(
                Animation
                    .linear(duration: 1.2)
                    .repeatForever(autoreverses: true)) {
                        isShowChevron.toggle()
                    }
            // Animation opacity
            withAnimation(.linear(duration: 7)) {
                isShowOpacity = true
            }
        }
    }
}










struct ChevronView_Previews: PreviewProvider {
    static var previews: some View {
        ChevronView()
    }
}
