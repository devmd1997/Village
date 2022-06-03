//
//  VillageSideBar.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 10/4/21.
//

import SwiftUI

struct VillageSideBar: View {
    var title = "Coding While Black"
    @State var isMute = false
    var body: some View {
        VStack{
            Group{
            Rectangle()
                .frame(width: 150, height: 150, alignment:
                        .center)
                .cornerRadius(21)
                .padding(.top)
            Text(title)
            }.padding()
            
            Toggle(isOn: $isMute, label: {
                Text("Mute")
                    .font(.custom("HelveticaNeue-Medium", size: 20))
            })
            .padding(.horizontal)
            SideBarOption(title: "Members", image: "person.2")
            SideBarOption(title: "Photos", image: "photo")
            SideBarOption(title: "Events", image: "calendar")
            SideBarOption(title: "Tribes", image: "flag")
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width * 0.6,
               height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Constants.MintBackgroundGradient, startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        
    }
}

struct SideBarOption: View {
    var title: String?
    var image: String?
    
    var body: some View {
        HStack{
            if let imgName = image{
                Image(systemName: imgName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 24, height: 24)
            }
            Spacer()
            if let text = title {
                Text(text)
                    .font(.custom("HelveticaNeue-Medium", size: 20))
            }
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
        }
        .padding(.leading)
        .frame(height: 40)
    }
}

struct VillageSideBar_Previews: PreviewProvider {
    static var previews: some View {
        VillageSideBar()
    }
}
