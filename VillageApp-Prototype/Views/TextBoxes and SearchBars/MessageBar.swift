//
//  MessageBar.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/30/21.
//

import SwiftUI

struct MessageBar: View {
    @State var text = ""
    var body: some View {
        HStack {
            TextField("Type a message", text: $text)
                .background(Constants.ChalkWhite)
                .textFieldStyle(OvalTextFieldStyle())
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "camera.circle")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            })
            .foregroundColor(Constants.DarkGray)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "calendar.circle")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            })
            .foregroundColor(Constants.DarkGray)
        }
        .padding(.horizontal)
    }
}

struct MessageBar_Previews: PreviewProvider {
    static var previews: some View {
        MessageBar()
    }
}
