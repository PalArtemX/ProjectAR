//
//  InfoView.swift
//  ProjectAR
//
//  Created by Artem Paliutin on 08.11.2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                    
                    Text("AR Info")
                    Spacer()
                    
                }
                Spacer()
            }
            .font(.largeTitle)
            .foregroundColor(.themeColor.red)
            .opacity(0.8)
            .padding()
        }
    }
}










struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
