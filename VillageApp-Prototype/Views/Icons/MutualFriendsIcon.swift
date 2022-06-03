//
//  MutualFriendsIcon.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/19/21.
//

import SwiftUI

struct MutualFriendsIcon: View {
    var size: CGFloat =  33
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.gray)
                .frame(width: size, height: size, alignment: .center).offset(x: size / 2, y: size / 2)
                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
            Circle()
                .fill(Color.gray)
                .frame(width: size, height: size, alignment: .center)
                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
        }
    }
}

struct MutualFriendsIcon_Previews: PreviewProvider {
    static var previews: some View {
        MutualFriendsIcon()
    }
}
