//
//  Scene2ARView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import RealityKit
import SwiftUI


struct Scene2ARView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Scene1" Reality File
        let scene2 = try! Scene2.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(scene2)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
