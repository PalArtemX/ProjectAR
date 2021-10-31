//
//  Color.swift
//  ProjectAR
//
//  Created by Artem Palyutin on 28.10.2021.
//

import Foundation
import SwiftUI


struct ThemeColor {
    let blue = Color("Blue")
    let green = Color("Green")
    let red = Color("Red")
    let yellow = Color("Yellow")
    let textLogo = Color("TextLogo")
}

extension Color {
    static var themeColor = ThemeColor()
}
