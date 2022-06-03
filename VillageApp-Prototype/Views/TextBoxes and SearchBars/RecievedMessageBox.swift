//
//  SentMessageBox.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/27/21.
//

import SwiftUI

struct RecievedMessageBox: View {
    var message = "Hello"
    var sender = "Name"
    var timeStamp = "Today at 5:00 PM"
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack{
                    Text(sender)
                        .font(.custom("HelveticaNeue-Bold", size: 14))
                        .foregroundColor(Constants.DarkGreen)
                    Text(timeStamp)
                        .font(.custom("HelveticaNeue-Medium", size: 14))
                }
                Text(message)
                    .font(.custom("HelveticaNeue-Medium", size: 16))
                    .foregroundColor(Constants.JungleGreen)
                    .padding(.horizontal)
                    .padding(.top, 6)
            }.padding()
            .frame(idealWidth: UIScreen.main.bounds.width * 0.6, maxWidth: UIScreen.main.bounds.width * 0.75)
            .background(Constants.AshGreen)
            .cornerRadius(20)
            .overlay(GeometryReader{
                geo in
                Circle()
                    .frame(width: 45, height: 45)
                    .position(x: geo.frame(in: .local).minX, y: geo.frame(in: .local).maxY)
                    .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
            })
//            Circle()
//                .frame(width: 45, height: 45)
//                .offset(x: -110, y: 35)
//                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
        }
    }
}

struct RecievedMessageBox_Previews: PreviewProvider {
    static var previews: some View {
        RecievedMessageBox()
    }
}
