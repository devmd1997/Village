//
//  TopHeaderView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/9/21.
//

import SwiftUI

struct TopHeaderView: View {
    let gradient = Gradient(colors: [Color("BackgroundGreen"), Color("DarkBackgroundGreen")])
    var body: some View {
//        ZStack{
            
//            Rectangle()
//            .fill(LinearGradient(gradient: waveGradient, startPoint: UnitPoint(x: 0.5, y: -0.57), endPoint: UnitPoint(x: 0.5, y: 2.2)))
//            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.13, alignment: .center)
            HStack{
                SearchBar()
                    .padding(.leading, 6)
                Spacer()
                DirectMessageButton()
                    .padding(.trailing, 24)
            }
            .padding(.top, 30)
//        }
    }
}

struct TopHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TopHeaderView()
            .background(Color.black)
    }
}
