//
//  Scene1ARView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 26.10.2021.
//

import RealityKit
import SwiftUI

struct Scene1ARView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Scene1" Reality File
        let scene1 = try! Scene1.loadPlayground()
        // Add the box anchor to the scene
        arView.scene.anchors.append(scene1)
   
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
