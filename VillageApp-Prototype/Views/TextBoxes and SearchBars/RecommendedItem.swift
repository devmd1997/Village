//
//  RecommendedItem.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/19/21.
//

import SwiftUI

struct RecommendedItem: View {
    let gradient = Gradient(colors: [Color("ChalkWhite"), Color("CreamGreen")])
    var title = "Coding While Black"
    var location = "Washington, DC"
    var members = "33,457"
    var firstMutual = "Taylor Smith"
    var mutuals = 50
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .top, endPoint: UnitPoint(x: 0.5, y: 1.5)))
                .frame(width: 240, height: 210, alignment: .center)
                .cornerRadius(15)
            VStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(20)
                Text(title)
                    .font(.custom("Proxima Nova Bold", size: 18))
                    .padding(.bottom,3)
                Text(location)
                    .font(.custom("ProximaNova-Regular", size: 13))
                    .foregroundColor(Color("DarkGray"))
                Text("\(members) Members")
                    .font(.custom("ProximaNova-Regular", size: 13))
                    .foregroundColor(Color("DarkGray"))
                    .padding(.bottom, 5)
                HStack{
                    MutualFriendsIcon()
                        .offset(x: 0, y: -10)
                        .padding(.trailing, 16)
                    Text("\(firstMutual) + \(mutuals) Others")
                    .font(.custom("ProximaNova-Regular", size: 13))
                    .foregroundColor(Color("Jade"))
                    .padding(.bottom, 5)
                }
                Button(action: {}, label: {
                    Text("Join")
                        .foregroundColor(.white)
                        .font(.custom("HelveticaNeue-Medium", size: 22))
                })//: Button
                .padding(.top, 6)
                .padding(.bottom, 6)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .background(Color("JungleGreen"))
                .cornerRadius(10)
            }.offset(x: 0, y: -40) //: VStack
        }//: ZStack
    }
}

struct RecommendedItem_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedItem()
    }
}
