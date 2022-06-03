//
//  NetworkRequestsCard.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/27/21.
//

import SwiftUI

struct NetworkRequestsCard: View {
    @ObservedObject var networkRequests = NetworkSubject()
    var body: some View {
        VStack{
            HStack{
                Text("Network Requests")
                    .font(.custom("HelveticaNeue-Bold", size: 14))
                    .foregroundColor(Constants.JungleGreen)
                Spacer()
                Text("xxx More").underline()
                    .font(.custom("HelveticaNeue-Bold", size: 14))
                    .foregroundColor(Constants.JungleGreen)
                    .padding(.trailing, 2)
                Image(systemName: "chevron.right")
                    .foregroundColor(Constants.JungleGreen)
            }.padding()
            Divider()
            if(networkRequests.networks.count > 0){
                NetworkRequestContent(network: networkRequests.networks[0], networkRequests: networkRequests)
                if(networkRequests.networks.count > 1){
                Divider()
                NetworkRequestContent(network: networkRequests.networks[1], networkRequests: networkRequests)
                .padding(.bottom)
                }
            }
        }.frame(width: UIScreen.main.bounds.width * 0.95)
        .background(Constants.ChalkWhite)
        .cornerRadius(10)
    }
}

struct NetworkRequestContent: View {
    var network: Network?
    @ObservedObject var networkRequests: NetworkSubject
    var body: some View{
        let name = network?.name ?? ""
        let mutuals = network?.mutualFriends ?? 0
        let image = network?.image ?? ""
        HStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            VStack(alignment: .leading){
                Text(name)
                    .font(.custom("HelveticaNeue-Medium", size: 14))
                    .foregroundColor(Constants.JungleGreen)
                Text("Mutual Networks: \(mutuals)")
                    .font(.custom("HelveticaNeue-Light", size: 14))
                    .foregroundColor(Constants.JungleGreen)
            }
            Spacer()
            Button(action: {
                networkRequests.remove(network: network!)
            }, label: {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Constants.SelectGreen)
            })
            Button(action: {
                networkRequests.remove(network: network!)
            }, label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Constants.Fuchia)
            })
        }
        .padding(.trailing)
        .padding(.leading)
    }
}

struct NetworkRequestsCard_Previews: PreviewProvider {
    static var previews: some View {
        NetworkRequestsCard()
    }
}
