//
//  VillageCard.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/14/21.
//

import SwiftUI

struct VillageCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color("Jade"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color("ChalkWhite")))
            .frame(width: 166, height: 115, alignment: .center)
            .overlay(VillageCardContentView())
            
    }
}

struct VillageCard_Previews: PreviewProvider {
    static var previews: some View {
        VillageCard()
    }
}
