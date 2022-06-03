//
//  VillageMessage.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/27/21.
//

import SwiftUI

struct VillageMessageView: View {
    var villageTitle = "Coding While Black"
    var messages = MessageList.list
    var body: some View {
        ZStack{
            LinearGradient(gradient: Constants.MintBackgroundGradient, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                CustomNavBar(left: {
                                Image(systemName: "chevron.left")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 14, height: 15, alignment: .center)
                                    .foregroundColor(.white)}, center: {
                                        VStack(alignment:.center){
                                            Rectangle()
                                                .frame(width: 47, height: 47, alignment: .center)
                                                .cornerRadius(7)
                                            Text("Coding While Black")
                                                .font(.custom("HelveticaNeue-Bold", size: 22))
                                                .foregroundColor(.white)
                                        }//: VStack
                                    }, right: {
                                        Button(action: {print("Search")}, label: {
                                            Image(systemName: "magnifyingglass")
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        })
                                        .frame(width: 20, height: 20, alignment: .center)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                        Button(action: {print("Search")}, label: {
                                            Image(systemName: "line.horizontal.3")
                                                .resizable()

                                        })
                                        .frame(width: 20, height: 20, alignment: .center)
                                        .foregroundColor(.white)
                                        
                                    })
                    .padding()
                Spacer()
                List(messages, id: \.id){ msg in
                    if(msg.isSender){
                        HStack{
                            Spacer()
                            SentMessageBox(message: msg.message, sender: msg.sender, timeStamp: msg.date)
                                .padding(.trailing)
                        }
                    }
                    else{
                        RecievedMessageBox(message: msg.message, sender: msg.sender, timeStamp: msg.date)
                            .padding(.leading)
                    }
                }
                .cornerRadius(30, corners: [.topLeft])
            }//: VStack
            VStack{
                Spacer()
                VStack{
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width, height: 1, alignment: .center)
                    MessageBar()
                        .padding(.vertical)
                }
            }
        }
    }
}

struct CustomNavBar<Left, Center, Right>: View where Left: View, Center: View, Right: View {
    let left: () -> Left
    let center: () -> Center
    let right: () -> Right
    init(@ViewBuilder left: @escaping () -> Left, @ViewBuilder center: @escaping () -> Center, @ViewBuilder right: @escaping () -> Right) {
        self.left = left
        self.center = center
        self.right = right
    }
    var body: some View {
        ZStack {
            HStack(alignment: .top) {
                left()
                Spacer()
            }
            center()
            HStack(alignment: .top) {
                Spacer()
                right()
            }
        }
    }
}

struct VillageMessage_Previews: PreviewProvider {
    static var previews: some View {
        VillageMessageView()
    }
}
