//
//  NetworkScrollCard.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/27/21.
//

import SwiftUI

struct NetworkScrollCard: View {
    @ObservedObject var networkSubject: NetworkSubject
    var title: String = ""
    var body: some View {
        VStack(alignment: .leading){
            let networks = networkSubject.networks
            Text(title)
                .font(.custom("HelveticaNeue-Bold", size: 24))
                .foregroundColor(Constants.JungleGreen)
                .padding()
            ScrollView(.horizontal) {
                HStack{
                    ForEach(networks){ item in
//                        if(item == 0){
//                            NetworkProfile(network: networks[item], networkSubject: networkSubject)
//                                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
//                                .padding(.leading, 12)
//                                .padding(.bottom)
//
//                        }
//                        else{
                            NetworkProfile(network: item, networkSubject: networkSubject)
                                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
                                .padding(6)
                                .padding(.bottom)
//                        }
                    }.padding(.horizontal, 6)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.95)
        .background(Constants.ChalkWhite)
        .cornerRadius(10)
    }
}

struct NetworkScrollCard_Previews: PreviewProvider {
    static var previews: some View {
        NetworkScrollCard(networkSubject: NetworkSubject())
    }
}
