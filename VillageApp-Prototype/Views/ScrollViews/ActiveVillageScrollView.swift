//
//  ActiveVillageScrollView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/1/21.
//

import SwiftUI

struct ActiveVillageScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            ForEach(0..<10){ num in
                VStack{
                    if(num == 9){
                        ActiveVillageItem()
                            .padding()
                            .padding(.bottom, 100)

                    }
                    else{
                        ActiveVillageItem()
                            .padding()
                    }
                }
                .frame(width: 300)
            }
       
        })
    }
}

struct ActiveVillageScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveVillageScrollView()
    }
}
