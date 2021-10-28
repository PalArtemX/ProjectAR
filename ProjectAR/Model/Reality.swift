//
//  Reality.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 28.10.2021.
//

import Foundation


struct Reality: Identifiable {
    var id = UUID()
    
    var indexAR: Int
    var isShowRealityView: Bool
    var isShowRotationRow: Bool
}
