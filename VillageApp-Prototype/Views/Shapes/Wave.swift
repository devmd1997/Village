//
//  Wave.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/18/21.
//

import SwiftUI

struct Wave: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        //Curve at bottom
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control1: CGPoint(x: rect.maxX, y: 1.5 * rect.maxY), control2: CGPoint(x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
    
    
}

struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        Wave()
            .stroke(Color.red, lineWidth: 5)
            .frame(height: 200)
            .padding()
    }
}
