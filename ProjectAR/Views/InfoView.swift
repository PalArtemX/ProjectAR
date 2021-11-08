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
            // MARK: - BackgroundView
            BackgroundView()
            
            VStack {
                // MARK: - Header
                HStack {
                    Text("AR")
                        .fontWeight(.light)
                        .foregroundColor(.themeColor.red)
                    
                    Text("Info")
                        .foregroundColor(.themeColor.red)
                        .fontWeight(.black)
                    Spacer()
                }
                
                Spacer()
                
                // MARK: - Footer
                VStack {
                    Text("The application was created for a portfolio")
                        .fontWeight(.light)
                    Text("Created by Artem Paliutin")
                        .fontWeight(.light)
                        
                }
                .foregroundColor(.gray)
                .font(.caption2)
                
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
