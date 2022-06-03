//
//  ActivePersonIcon.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/24/21.
//

import SwiftUI

struct ActivePersonIcon: View {
    var body: some View {
        ZStack{
            Circle()
                .strokeBorder(Color("BrightGreen"), lineWidth: 3)
                .background(Circle().fill(Color.gray))
                .frame(width: 33, height: 33, alignment: .center)
            Circle()
                .strokeBorder(Color.white)
                .background(Circle().fill(Color("BrightGreen")))
                .frame(width: 8, height: 8, alignment: .center)
                .offset(x: 10, y: 12)
        }
    }
}

struct ActivePersonIcon_Previews: PreviewProvider {
    static var previews: some View {
        ActivePersonIcon()
    }
}
