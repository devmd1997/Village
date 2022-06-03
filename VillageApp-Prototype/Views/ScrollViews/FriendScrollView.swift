//
//  FriendScrollView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/18/21.
//

import SwiftUI

struct FriendScrollView: View {
    var friends = ["Naomi", "Jack", "Rob", "Justice", "David", "Moses", "Ryan"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment:.center, spacing: 15) {
                ForEach(0..<friends.count){ index in
                    VStack{
                        if(index == 0){
                            Circle()
                            .fill(Color.gray)
                            .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0.0, y: 4.0)
                                .padding(.leading)
                                .padding(.bottom)
                        }
                        else if(index == friends.count - 1){
                            
                                Circle()
                                .fill(Color.gray)
                                .frame(width: 50, height: 50, alignment: .center)
                                    .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0.0, y: 4.0)
                                    .padding(.trailing)
                                    .padding(.bottom)
                        }
                        else{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0.0, y: 4.0)
                                .padding(.bottom)
                        }
                    }//:VStack
                }//:ForEach
            }//:HStack
        })//:ScrollView
    }
}

struct FriendScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FriendScrollView()
    }
}
