//
//  ProfileCardContentView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/14/21.
//

import SwiftUI

struct ProfileCardContentView: View {
    var name = "Taylor Smith"
    var username = "smith_taylor"
    var profession = "Software Engineer"
    var location = "Baltimore , Maryland"
    var networkNumber = "575"
    var villagesNumber = "45"
    var body: some View {
        VStack{
            Circle()
                .strokeBorder(Color.white, lineWidth: 3)
                .background(Circle().fill(Color.gray))
                .frame(width: 105, height: 105, alignment: .center)
            Text("\(name)")
                .font(.custom("HelveticaNeue-Medium", size: 24))
                .foregroundColor(.white)
            Text("@\(username)")
                .font(.custom("HelveticaNeue-Medium", size: 17))
                .foregroundColor(.white)
            Text("\(profession)")
                .font(.custom("HelveticaNeue-Medium", size: 20))
                .foregroundColor(.white)
                .padding()
                .background(Color("MintGreen"))
                .cornerRadius(16)
            HStack{
                Text("Baltimore, Maryland")
                    .font(.custom("Helvetica-Regular", size: 14))
                    .foregroundColor(.white)
                    .padding(.leading, 16)
                Spacer()
            }//: HStack
            HStack{
                Spacer()
                VStack{
                    Text("\(networkNumber)")
                        .font(.custom("HelveticaNeue-Bold", size: 27))
                        .foregroundColor(.white)
                    Text("Networks")
                        .font(.custom("HelveticaNeue-Regular", size: 15))
                        .foregroundColor(.white)
                }//: VStack
                Spacer()
                VStack{
                    Text("\(villagesNumber)")
                        .font(.custom("HelveticaNeue-Bold", size: 27))
                        .foregroundColor(.white)
                    Text("Villages")
                        .font(.custom("HelveticaNeue-Regular", size: 15))
                        .foregroundColor(.white)
                }//: VStack
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Edit Profile")
                        .font(.custom("HelveticaNeue-Regular", size: 17))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("LimeGreen"))
                        .cornerRadius(15)
                })
                Spacer()
            }//: HStack
        }//: VStack
    }
}

struct ProfileCardContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardContentView().background(Color.black)
    }
}
