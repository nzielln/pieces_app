//
//  GalaxyView.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

func getPoint(radius: CGFloat, center: CGPoint, angle: Double) -> CGPoint {
    let x = center.x + (radius * cos(angle))
    let y = center.y + (radius * sin(angle))
    
    return CGPoint(x: x, y: y)
}

/*
 entries and positions -> [CGPoint : Entry]
 
 entries and images -> [CGPoint : Image ]
 
 Draw circles -> 6
 Draw each sprite at a position then
 -> Add CGPoints and Image to point and image hash map
 
 When a new entry is created
 -> randomly select a point from available CGPoints in point and image is they're not empty
 -> Assign entry to an image at that point so when you click you open the entry
 
 -> Save entry to CGPoint in entries and position
 */


struct Galaxy: View {
    var rings = GalaxyRings().rings
    @State private var width = 0
    @State private var height = 0
    @EnvironmentObject var diary: Diary
    @State private var factor = 0.5
    @State private var plusClicked = false
    @State private var t = ""
    
    var body: some View {
        return GeometryReader { proxy in
            VStack {
                UserHeader(plusClicked: $plusClicked)
                ZStack {
                    ForEach(rings) { ring in
                        Circle()
                            .stroke(Color.dark, lineWidth: 1)
                            .frame(width: ring.radius, height: ring.radius, alignment: .center)
                    }
                    
                    ForEach(diary.pointImage.sorted(by: >), id: \.key) { key, value in
                        diary.pointImage[key].position(x: key.x, y: key.y)
                        
                    }
                    
                    if plusClicked {
                        let ring_num = Int.random(in: 0..<6)
                        var target_ring = rings[ring_num]
                        let ang = target_ring.getAngle()
                        let p = getPoint(radius: target_ring.radius, center: CGPoint(x: proxy.size.width/2, y: proxy.size.height/2), angle: Double(ang))
                        let img = Image("mediumcircle.dark")
                        img.position(x: p.x, y: p.y)
                        diary.pointImage.updateValue(img, forKey: p)
                    }
                }.position(x: proxy.size.width/2, y: proxy.size.width)
                
            }
        }
    }
}

func prnt(point: CGPoint) {
    print(point)
}

extension CGPoint: Comparable {
    public static func < (lhs: CGPoint, rhs: CGPoint) -> Bool {
        return lhs.equalTo(rhs)
    }
}

extension Image: Comparable {
    public static func < (lhs: Image, rhs: Image) -> Bool {
        return true
    }
}



struct Galaxy_Previews: PreviewProvider {

    static var previews: some View {
        Galaxy().environmentObject(Diary())
    }
}
