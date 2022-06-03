//
//  Extensions.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/29/21.
//

import Foundation
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
    func placeholder<Content: View>(
            when shouldShow: Bool,
            alignment: Alignment = .leading,
            @ViewBuilder placeholder: () -> Content) -> some View {

            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct PreventableScrollView<Content>: View where Content: View {
    @Binding var canScroll: Bool
    var content: () -> Content
    
    var body: some View {
        if canScroll {
            ScrollView(.vertical, showsIndicators: false, content: content)
        } else {
            content()
        }
    }
}


