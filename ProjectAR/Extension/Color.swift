//
//  Color.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 28.10.2021.
//

import Foundation
import SwiftUI


struct ThemeColor {
    let textColor = Color("TextColor")
}

extension Color {
    static var themeColor = ThemeColor()
}
