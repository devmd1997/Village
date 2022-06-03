//
//  ProfileView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/14/21.
//

import SwiftUI

struct ProfileView: View {
    @State var isFullView: Bool = false
    @State var animate: Bool = true
    var items: [GridItem] {
        Array(repeating: .init(.adaptive(minimum: 12)), count: 2)
    }
    var body: some View {
        ZStack{
            
            FullProfileView(isScrollable: $isFullView)
            Spacer()
            VStack(spacing: 0){
                VStack{
                    Spacer()
                    Button(action: {isFullView.toggle()}, label: {
                        Image(systemName: "chevron.down.circle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                            .accentColor(.white)
                            .padding(.bottom, 12)
                            .rotationEffect(.degrees(isFullView ? 180 : 0))
                            .shadow(color: .black, radius: 4, x: 0.0, y: 4.0)
                            .transition(.move(edge: .bottom))
                            .animation(.easeInOut(duration: 0.7))
                            
                    })
                }
                .frame(height: !isFullView ? UIScreen.main.bounds.height * 0.5 : UIScreen.main.bounds.height * 0.9)
                if(!isFullView){
                VillagesScrollView()
                    .background(Color.white)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut(duration: 0.7))
                }
            }//: VSTACK
            .ignoresSafeArea()
            .onAppear(perform: {
                self.animate.toggle()
            })
        }//: ZSTACK
    }
}

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        let insertion = AnyTransition.move(edge: .bottom)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
