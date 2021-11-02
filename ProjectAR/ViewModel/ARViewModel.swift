//
//  ARViewModel.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 27.10.2021.
//

import Foundation


class ARViewModel: ObservableObject {
    
    @Published var reality = Reality(indexAR: 0, isShowRealityView: false)
    
}
