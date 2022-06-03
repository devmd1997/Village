//
//  ProfileCardView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/14/21.
//

import SwiftUI

struct ProfileCardView: View {
    let gradient = Gradient(colors: [Color("BackgroundGreen"), Color("DarkBackgroundGreen")])
    var body: some View {
        VStack {
            ProfileCardContentView()
                .padding()
                .padding(.top, 25)
            Button(action: {print("next Page")}, label: {
                Image(systemName: "chevron.down.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .accentColor(.white)
                    .padding(.bottom)
            })
        }
        .frame(minWidth: UIScreen.main.bounds.width, minHeight: UIScreen.main.bounds.height * 0.45)
        .background(LinearGradient(gradient: Constants.MintBackgroundGradient, startPoint: .top, endPoint: .bottom))
        
        .cornerRadius(32)
        
//            Rectangle()
//                .fill(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
//                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.45, alignment: .center)
//                .cornerRadius(32)
//                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
//                .overlay(ProfileCardContentView())
//                .ignoresSafeArea()
    }
}

struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardView()
    }
}
