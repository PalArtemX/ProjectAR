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
                HStack(spacing: 0) {
                    Text("In")
                        .fontWeight(.regular)
                        .foregroundColor(.accentColor)
                    
                    Text("fo")
                        .foregroundColor(.accentColor)
                        .fontWeight(.bold)
                    Spacer()
                }
                Spacer()
                // MARK: - Info Message
                VStack {
                    Text("Hello, content and functionality will be added as soon as they are ready.")
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    Text("For the application to work, you need access to the camera, allow access to the camera. To display AR elements, hover over a horizontal surface and move the camera slightly in different directions.")
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                }
                .foregroundColor(.accentColor)
                .font(.subheadline)
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
.previewInterfaceOrientation(.portrait)
    }
}
