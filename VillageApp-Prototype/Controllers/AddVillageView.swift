//
//  AddVillageView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 10/31/21.
//

import SwiftUI

struct AddVillageView: View {
    @State private var villageName: String = ""
    @State private var description: String = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Constants.MintBackgroundGradient, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack {
                        Text("Add Image")
                            .font(.custom("HelveticaNeue-Bold", size: 36))
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                    }
                    .padding(30)
                    .foregroundColor(.white)
                    .background(Constants.LimeGreen)
                    .cornerRadius(15)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 4)
                                )
                })//: Button
                .padding()
                VStack(alignment: .center, spacing: 20)
                {
                    TextField("", text: $villageName)
                        .placeholder(when: villageName.isEmpty, alignment: .center,  placeholder: {
                            Text("Enter your Village Name").foregroundColor(.white)
                        })
                    Rectangle()
                        .frame(height: 1)
                    TextField("", text: $description)
                        .placeholder(when: description.isEmpty, alignment: .center, placeholder: {
                            Text("Description").foregroundColor(.white)
                        })
                        .padding(.bottom, 30)
                }.padding()
                .background(Constants.LimeGreen)
                .foregroundColor(.white)
                //: VStack
                Button(action: {}, label: {
                    HStack{
                        Image(systemName: "plus.circle")
                        Text("Add Tags")
                            .font(.custom("HelveticaNeue-Bold", size: 16))
                    }.padding()
                    .foregroundColor(.white)
                    .background(Constants.LimeGreen)
                    .cornerRadius(15)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 4))
                    //: HStack
                })//: Button
                .padding(.vertical)
                Button(action: {}, label: {
                    HStack{
                        Image(systemName: "plus.circle")
                        Text("Add Friends")
                            .font(.custom("HelveticaNeue-Bold", size: 16))
                    }.padding()
                    .foregroundColor(.white)
                    .background(Constants.JungleGreen)
                    .cornerRadius(15)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 4))
                    //: HStack
                })//: Button
                .padding(.vertical)
                Spacer()
            }
        }
    }
}

struct AddVillageView_Previews: PreviewProvider {
    static var previews: some View {
        AddVillageView()
    }
}
