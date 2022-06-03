//
//  VillageCardContentView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/14/21.
//

import SwiftUI

struct VillageCardContentView: View {
    var location = "Washington, DC"
    var title = "Village Title"
    var mutualFriend = "Ryan Turner"
    var mutualFriends = "50"
    var memberSize = "300"
    var activeMembers = "150"
    var tribes = "10"
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 36, height: 36, alignment: .center)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text("\(location)")
                        .font(.custom("ProximaNovaAlt-Light", size: 9))
                        .foregroundColor(.gray)
                    Text("\(title)")
                        .font(.custom("HelveticaNeue-Bold", size: 10))
                }
            }
           Divider()
            .background(Color("Jade"))
            HStack{
                MutualFriendsIcon(size: 20)
                    .padding(.leading, 6)
                    .padding(.trailing, 6)
                Spacer()
                Text("\(mutualFriend) + \(mutualFriends) Others")
                    .font(.custom("HelveticaNeue-Light", size: 9))
                    .foregroundColor(Color("DarkBackgroundGreen"))
                    .padding(.trailing, 10)
            }
            .padding(.bottom, 6)
            HStack{
                Image(systemName: "person")
                    .foregroundColor(Color("Jade"))
                Text("100/300")
                    .font(.custom("HelveticaNeue-Light", size: 9))
                    .foregroundColor(Color("Jade"))
                Spacer()
                Image(systemName: "flag")
                    .foregroundColor(Color("Jade"))
                Text("\(tribes)")
                    .font(.custom("HelveticaNeue-Light", size: 9))
                    .foregroundColor(Color("Jade"))
            }
        }
        .padding(6)
    }
}

struct VillageCardContentView_Previews: PreviewProvider {
    static var previews: some View {
        VillageCardContentView().background(Color.white)
    }
}
