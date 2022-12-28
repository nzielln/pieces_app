//
//  Theme.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import Foundation
import SwiftUI

enum Theme: String, CaseIterable, Codable, Identifiable, ShapeStyle {
    case light
    case dark
    
    var maincolor: Color {
        Color(rawValue)
    }
    
    var accentcolor: Color {
        switch self {
        case .dark: return Color(red: 236, green: 231, blue: 221)
        case .light: return Color(red: 8, green: 9, blue: 13)
        }
    }
    
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
    
    
    
}
