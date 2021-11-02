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
        
        let scene1 = try! Scene1.load_Scene1()
        arView.scene.anchors.append(scene1)
   
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
