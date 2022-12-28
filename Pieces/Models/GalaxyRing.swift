//
//  GalaxyRing.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import Foundation
import CoreGraphics
import SwiftUI

struct GalaxyRings {
    let rings = [
        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(200)),
        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(300)),
        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(400)),
        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(500)),
        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(600)),
        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(700))

    ]
    
//    let bigrings = [
//        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(100)),
//        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(250)),
//        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(400)),
//        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(550)),
//        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(700)),
//        Ring(initialangle: .degrees(0), finalangle: .degrees(0), clockwise: true, radius: CGFloat(850))
//
//    ]
    
}

struct Ring: Shape, Identifiable {
    let id: UUID
    let initialangle: Angle
    let finalangle: Angle
    let clockwise: Bool
    let radius: CGFloat
    var angles: [Double] = []
    
    init(id: UUID = UUID(), initialangle: Angle, finalangle: Angle, clockwise: Bool, radius: CGFloat) {
        self.id = id
        self.initialangle = initialangle
        self.finalangle = finalangle
        self.clockwise = clockwise
        self.radius = radius
        
        for ang in stride(from: 0, to: Double.pi, by: Double.pi/(radius/50)) {
            self.angles.append(Double(ang))
        }
        
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: radius,
                    startAngle:initialangle,
                    endAngle: finalangle,
                    clockwise: clockwise)
        
        return path
    }
    
    mutating func getAngle() -> Double {
        let ang = self.angles.randomElement()!
        self.angles.removeAll(where: {$0 == ang})
        
        return ang
    }
        
    
}
