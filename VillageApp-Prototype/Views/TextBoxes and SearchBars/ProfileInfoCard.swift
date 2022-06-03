//
//  ProfileInfoCard.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/20/21.
//

import SwiftUI

struct ProfileInfoCard: View {
    var title = "Education"
    var content = [("University of Maryland","2012-2015"), ("Ohio University", "2017-2020")]
    var body: some View {
        VStack(alignment: .leading){
            ProfileContnet(title: title, content: content)
        }
        .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .leading)
        .background(Constants.LightMint.opacity(0.5))
        .cornerRadius(16)
    }
}

struct BioCard: View {
    var body: some View {
        VStack{
            BioContent()
        }
        .background(Constants.LightMint.opacity(0.5))
        .cornerRadius(16)
        .frame(width: 337, alignment: .center)
        .fixedSize(horizontal: false, vertical: true)
    }
}
struct BioContent: View {
    var text = """
 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at cursus vitae nunc fringilla turpis turpis tempus, eu. Nulla accumsan ut tristique ut imperdiet tellus. Sit amet, lobortis nisl viverra. Est facilisis massa id risus id purus est leo.
 """
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text("Bio")
                .foregroundColor(.white)
                .font(.custom("HelveticaNeue-Bold", size: 24))
            Text(text)
                .foregroundColor(.white)
                .font(.custom("HelveticaNeue-Regular", size: 14))
        }
        .padding()
    }
}

struct ProfileContnet: View {
    var title = "Education"
    var content = [("University of Maryland","2012-2015"), ("Ohio University", "2017-2020")]
    var body: some View{
        VStack(alignment: .leading, spacing: 4){
            Text(title)
                .foregroundColor(.white)
                .font(.custom("HelveticaNeue-Bold", size: 24))
                .padding(.bottom, 8)
                ForEach(0..<content.count, id: \.self){ item in
                    let last = item == content.count - 1 ? true : false
                    HStack(alignment: .top){
                        Bulletin(isLast: last)
                        VStack(alignment: .leading){
                            Text(content[item].0)
                                .foregroundColor(.white)
                                .font(.custom("HelveticaNeue-Regular", size: 18))
                            Text(content[item].1)
                                .foregroundColor(.white)
                                .font(.custom("HelveticaNeue-Regular", size: 12))
                        }.offset(y: -10)
                    }
                }
            }
        .padding()
        }
}

struct Bulletin: View {
    var isLast: Bool = false
    var body: some View {

        VStack{
            Circle()
                .stroke(Color.white)
                .background(Circle().fill(Color.clear))
                .frame(width: 9, height: 9, alignment: .center)
            if(!isLast){
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 1, height: 57, alignment: .center)
            }
                
        }
    }
}

struct ProfileInfoCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoCard()
//        Bulletin().background(Color.black)
    }
}
