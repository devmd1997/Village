//
//  DirectMessageButton.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/18/21.
//

import SwiftUI

struct DirectMessageButton: View {
    var body: some View {
        Button(action: {}, label: {
            ZStack(alignment:.topTrailing){
            VStack{
                Image(systemName: "paperplane").frame(width: 20, height: 20, alignment: .center)
                Text("Inbox")
                    .font(.custom("HelveticaNeue-Bold", size: 12))
                }
                Circle()
                    .fill(Color("Fuchia"))
                    .frame(width: 9, height: 9, alignment: .center)
                    .overlay(Circle().stroke(lineWidth: 2.0))
                    .offset(x: -2, y: -3)
            }
        }).accentColor(.white)
    }
}

struct DirectMessageButton_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessageButton().background(Color.black)
    }
}
