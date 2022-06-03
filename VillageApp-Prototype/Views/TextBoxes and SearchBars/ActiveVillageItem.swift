//
//  ActiveVillageItem.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/24/21.
//

import SwiftUI

struct ActiveVillageItem: View {
    let gradient = Gradient(colors: [Color("ChalkWhite"), Color("CreamGreen")])
    var notifcationMessages = "100"
    var body: some View {
        ZStack{
       Rectangle()
        .fill(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
        .frame(width: 280, height: 140, alignment: .center)
        .cornerRadius(10)
        .overlay(ActiveVillageInfo(),alignment: .top)
            Circle()
                .fill(Color("Fuchia"))
                .frame(width: 40, height: 40, alignment: .center)
                .overlay(Text("\(notifcationMessages)+")
                            .font(.custom("HelveticaNeue-Bold", size: 14))
                            .foregroundColor(.white))
                .offset(x: 130, y: -65)
        }
    }
}

struct ActiveVillageItem_Previews: PreviewProvider {
    static var previews: some View {
        ActiveVillageItem()
    }
}

struct ActiveVillageInfo: View {
    var location = "Washington, DC"
    var title = "UI/UX Developers"
    var body: some View {
        VStack(alignment: .leading){
        HStack(){
            Rectangle()
                .fill(Color.gray)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(10)
                .padding(.leading)
                .padding(.top, 6)
            VStack(alignment: .leading){
                Text(location)
                    .font(.custom("HelveticaNeue-Regular", size: 12))
                    .foregroundColor(.gray)
                Text(title)
                    .font(.custom("HelveticaNeue-Medium", size: 18))
            }//: VStack
            Spacer()
        }//: HStack
        Divider()
            .frame(width: 260, height: 1, alignment: .center)
        Text("People Active")
            .font(.custom("HelveticaNeue-Regular", size: 12))
            .padding(.leading)
            HStack(spacing: 10){
            ForEach(0..<6){ index in
                ActivePersonIcon()
            }//:ForEach
            }.padding(.leading)//: HStack
        }//: VStack
    }//:Body
}
