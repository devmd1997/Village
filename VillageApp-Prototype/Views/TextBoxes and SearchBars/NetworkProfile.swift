//
//  NetworkProfile.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/27/21.
//

import SwiftUI

struct NetworkProfile: View {
    var network: Network?
    @ObservedObject var networkSubject: NetworkSubject
    var body: some View {
        let name = network?.name ?? ""
        let profession = network?.profession ?? ""
        let location = network?.location ?? ""
        let mutualFriends: Int = network?.mutualFriends ?? 0
        let image: String = network?.image ?? "person.fill"
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(30)
//            Circle()
//                .fill(Image("image"))
//                .frame(width: 60, height: 60, alignment: .center)
            Text(name)
                .font(.custom("HelveticaNeue-Medium", size: 12))
                .foregroundColor(.white)
            Text(profession)
                .font(.custom("HelveticaNeue-Light", size: 12))
                .foregroundColor(.white)
            Text(location)
                .font(.custom("HelveticaNeue-Light", size: 12))
                .foregroundColor(.white)
            Text("\(mutualFriends) Mutual Friends")
                .font(.custom("HelveticaNeue-Medium", size: 12))
                .foregroundColor(.white)
            Button(action: {
                networkSubject.remove(network: network!)
            }, label: {
                HStack(spacing: 6){
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 12, height: 12, alignment: .center)
                    Text("Add")
                        .font(.custom("HelveticaNeue-Medium", size: 14))
                }
                .foregroundColor(.white)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .padding(.leading)
                .padding(.trailing)
                .background(Constants.JungleGreen)
                .cornerRadius(15)
            })
        }.padding()
        .background(LinearGradient(gradient: Constants.DarkMintGradient, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
    
//    private func removeFromList() {
//        networkList.list.removeAll(where: {
//            $0.id == network?.id
//        })
//    }
}

struct NetworkProfileTest: View {
    @State var networkList = NetworkList(title: "Title")
    var body: some View{
        NetworkProfile(network: Network(image: "tylerProfile", name: "Tyler Hero", profession: "Software Engineer", mutualFriends: 20, location: "Washington DC"), networkSubject: NetworkSubject())
    }
}

struct NetworkProfile_Previews: PreviewProvider {
    static var previews: some View {
        NetworkProfileTest()
    }
}
