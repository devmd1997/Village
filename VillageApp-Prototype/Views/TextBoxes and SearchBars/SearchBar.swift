//
//  SwiftUIView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/18/21.
//

import SwiftUI

struct SearchBar: View {
    @State var text = ""
    var body: some View {
        HStack{
            TextField("Search", text: $text)
                .padding(.leading)
                .accentColor(.white)
            Image(systemName: "magnifyingglass").foregroundColor(.white)
                .padding(.trailing)
        }.modifier(customViewModifier(roundedCorners: 20, textColor: .white))
        .padding()
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self
                                        ._Label>)-> some View {
        configuration.padding(5)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
            .foregroundColor(.white)
    }
}

struct customViewModifier: ViewModifier {
    var roundedCorners: CGFloat
    var textColor: Color
    func body(content: Content) -> some View{
        content.padding(3)
            .frame(width: 250, height: 30, alignment: .center)
            .background(Color.white.opacity(0.5))
            .cornerRadius(roundedCorners)
            .foregroundColor(textColor)
            .font(.custom("Open Sans", size: 12))
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
