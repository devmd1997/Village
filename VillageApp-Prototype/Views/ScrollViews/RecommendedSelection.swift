//
//  RecommendedSelection.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/19/21.
//

import SwiftUI

struct RecommendedSelection: View {
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        let x = proxy.frame(in: .global).minX
        let diff = abs(x)
        if diff > 125 {
            scale = diff / 250
        }
        return scale
    }
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(spacing: 16){
                ForEach(0..<10) { num in
                    RecommendedItem()
                        .padding(.horizontal)
                        .scaleEffect(CGSize(width: 0.8, height: 0.8))
                    
//                    GeometryReader{ proxy in
//                        let x = proxy.frame(in: .global).minX
//                        let scale = getScale(proxy: proxy)
//                        Text("\(x)")
////                            .scaleEffect(CGSize(width: scale, height: scale))
////                        RecommendedItem()
////                            .offset(x: 0, y: 40)
////                            .scaleEffect(CGSize(width: scale, height: scale))

                    .frame(minWidth: 0, idealWidth: 250, maxWidth: .infinity, minHeight: 0, idealHeight: 250, maxHeight: .infinity, alignment: .center)
                }
            }
        }
    }
}

struct RecommendedSelection_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedSelection()
    }
}
