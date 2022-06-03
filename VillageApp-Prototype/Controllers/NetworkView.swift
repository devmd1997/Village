//
//  NetworkView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/27/21.
//

import SwiftUI

struct NetworkView: View {
    var titles: [NetworkList] = [NetworkList(title: "Networks Close To You"), NetworkList(title: "Networks With Similar Friends"), NetworkList(title: "Networks With Similar Interests"), NetworkList(title: "Networks With Similar Professions")]
    @StateObject var proximityNetworkSubject: NetworkSubject = NetworkSubject()
    @StateObject var mutualNetworkSubject: NetworkSubject = NetworkSubject()
    @StateObject var interestsNetworkSubject: NetworkSubject = NetworkSubject()
    @StateObject var professionNetworkSubject: NetworkSubject = NetworkSubject()
    var body: some View {
        ZStack{
            LinearGradient(gradient: Constants.MintBackgroundGradient, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView(.vertical){
                TopHeaderView()
                VStack(alignment: .leading){
                    NetworkRequestsCard()
                        .padding(.bottom, 24)
                    Text("Discover")
                        .font(.custom("HelveticaNeue-Bold", size: 28))
                        .foregroundColor(.white)
                    ForEach(0..<4){ item in
                        switch(item){
                        case 0:
                            NetworkScrollCard(networkSubject: proximityNetworkSubject, title: "Networks Close To You")
                        case 1:
                            NetworkScrollCard(networkSubject: mutualNetworkSubject, title: "Networks With Similar Friends")
                        case 2:
                            NetworkScrollCard(networkSubject: interestsNetworkSubject, title: "Networks With Similar Interests")
                        case 3:
                            NetworkScrollCard(networkSubject: professionNetworkSubject, title: "Networks With Similar Professions")
                            
                        default:
                            NetworkScrollCard(networkSubject: NetworkSubject(), title: "")
                        }
                    }
                }.padding(.bottom, 100)
            }.ignoresSafeArea() //: Scroll View
        }
    }
}

struct NetworkView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkView()
    }
}
