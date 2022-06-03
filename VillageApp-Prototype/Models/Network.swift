//
//  Network.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 10/18/21.
//

import Foundation
import SwiftUI

struct Network: Identifiable {
    var id = UUID().uuidString
    var image: String
    var name: String
    var profession: String
    var mutualFriends: Int
    var location: String

}

struct NetworkList: Identifiable {
    var id = UUID()
    var title: String
    static var list: [Network] = [
        Network(image: "tylerProfile", name: "Tyler Hero", profession: "Software Engineer", mutualFriends: 20, location: "Washington DC"),
        Network(image: "thomasProfile", name: "Thomas Brown", profession: "Songwriter", mutualFriends: 14, location: "Los Angeles, CA"),
        Network(image: "mikeProfile", name: "Mike Silver", profession: "Electrical Engineer", mutualFriends: 25, location: "Boston, MA"),
        Network(image: "jessProfile", name: "Jess Bower", profession: "Consultant", mutualFriends: 20, location: "New York, NY"),
        Network(image: "jacobProfile", name: "Jacob White", profession: "Mathemetician", mutualFriends: 30, location: "Trenton, NJ")
    ]
}

class NetworkSubject: ObservableObject {
    @Published var networks: [Network] = NetworkList.list
    
    func remove(network: Network){
        networks.removeAll(where: {
            $0.id == network.id
        })
    }//: Remove
    
    func getNetwork(){
        networks = NetworkList.list
    }
    func add(network: Network){
        networks.append(network)
    }
}

