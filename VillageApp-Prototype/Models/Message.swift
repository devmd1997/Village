//
//  Message.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/29/21.
//

import Foundation
import SwiftUI

struct Message: Identifiable {
    var id = UUID()
    var message: String
    var sender: String
    var date: String
    var isSender: Bool
}


struct MessageList {
   static let list = [Message(message: "Heyyy Yall!", sender: "Taylor Banks", date: "Today at 5:01 PM", isSender: false), Message(message: "Whats going on?", sender: "Tyler Hero", date: "Today at 5:01 PM", isSender: false),
                Message(message: "Nothing much just conding. What yall doing this Thursday?", sender: "Taylor Banks", date: "Today at 5:03 PM", isSender: false),
                Message(message: "What you planning?", sender: "Devon Adams", date: "Today at 5:05PM", isSender: true)]
}
