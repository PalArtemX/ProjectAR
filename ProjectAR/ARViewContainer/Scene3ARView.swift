//
//  Scene3ARView.swift
//  ProjectAR
//
//  Created by Artem Paliutin on 16.11.2021.
//

import RealityKit
import SwiftUI
import ARKit

struct Scene3ARView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        let scene3 = try! Scene3.load_Scene3()
        arView.scene.anchors.append(scene3)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
