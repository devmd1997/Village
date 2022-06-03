//
//  HomeHeader.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/18/21.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        ZStack(alignment: .top){
            GeometryReader{ geo in
                let global = geo.frame(in: .global)
                Wave()
                    .fill(LinearGradient(gradient: waveGradient, startPoint: UnitPoint(x: 0.5, y: -0.25), endPoint: UnitPoint(x: 0.5, y: 1.1)))
                    .offset(y: global.minY > 0 ? -global.minY : 0)
                    .frame(width: global.maxX, height: global.minY > 0 ? 225 + global.minY : 225, alignment: .topLeading)
            
                VStack(alignment: .leading, spacing: global.minY > 0 ? 12 + global.minY * 0.3 : 12){
                HStack{
                    Text("People You May Know")
                        .foregroundColor(.white)
                        .font(.custom("HelveticaNeue-Bold", size: 22))
                        .padding(.leading,24)
                    Spacer()
                    Button(action: {
                        print("See All")
                    }, label: {
                        Text("See All")
                            .underline()
                            .font(.custom("Open Sans", size: 13))
                            .padding(.trailing)
                    })
                }.accentColor(.white)
                .padding(.top, global.minY > 0 ? 1 + global.minY * 0.3 : 1)
                FriendScrollView()                    .padding(.bottom)
                }.padding(.top, UIScreen.main.bounds.height * 0.13)
                .offset(y: global.minY > 0 ? -global.minY: 0)
            }
        }
    }
}

struct HomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeader()
    }
}
