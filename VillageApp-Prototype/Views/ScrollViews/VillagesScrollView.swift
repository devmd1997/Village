//
//  VillagesScrollView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/15/21.
//

import SwiftUI

struct VillagesScrollView: View {
    let data = Array(1...1000).map({ "Item \($0)"})
    let layout = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        ScrollView {
            HStack{
                Text("Villages")
                    .font(.custom("HelveticaNeue-Medium", size: 24))
                    .foregroundColor(Color("DarkBackgroundGreen"))
                Spacer()
                Button(action: {print("grid")}, label: {
                    Image(systemName: "rectangle.grid.2x2.fill")
                        .foregroundColor(Color("DarkBackgroundGreen"))
                })
                
            }.padding()
            LazyVGrid(columns: layout, spacing: 12){
                ForEach(data, id: \.self){ item in
                    VillageCard()
                }
            }
        }
    }
}

struct VillagesScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VillagesScrollView()
    }
}
