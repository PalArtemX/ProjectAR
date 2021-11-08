//
//  Scene2ARView.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import RealityKit
import SwiftUI
import ARKit

struct Scene2ARView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        let scene2 = try! Scene2.loadBox()
        arView.scene.anchors.append(scene2)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
