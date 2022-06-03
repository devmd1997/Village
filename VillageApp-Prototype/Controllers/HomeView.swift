//
//  ContentView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 8/10/21.
//

import SwiftUI
let gradient = Constants.MintBackgroundGradient
let waveGradient = Gradient(colors: [Color("SoftForestGreen"), Color("ForestGreen")])
struct HomeView: View {
    
    @State var time = Timer.publish(every: 0.1, on: .current, in: .tracking).autoconnect()
    @State var isVisible = false
    var body: some View {
        ZStack(alignment: .top){
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: true, content: {
                VStack(alignment: .leading){
                    GeometryReader{ geo in
                        HomeHeader()
                            .padding(.bottom, 30)
                            .onReceive(self.time, perform: { _ in
                                print(geo.frame(in: .global).minY)
                                let y = geo.frame(in: .global).minY
                                if (-y > (UIScreen.main.bounds.height * 0.01)) {
                                    self.isVisible = true
                                } else {
                                    self.isVisible = false
                                }
                            })
                    }.frame(height: UIScreen.main.bounds.height * 0.3) //: VStack
                }
                    VStack(alignment: .leading){
                    Text("Recommended Villages")
                        .font(.custom("HelveticaNeue-Medium", size: 20))
                        .foregroundColor(.white)
                        .padding(.leading, 24)
                    RecommendedSelection()
                        .frame(height: 300)
                    Text("Active Villages")
                        .font(.custom("HelveticaNeue-Medium", size: 20))
                        .foregroundColor(.white)
                        .padding(.leading, 24)
                    ActiveVillageScrollView()
                        .padding(.leading,30)
                    }//: VStack
            }).ignoresSafeArea()
            
            //:Scroll View
            GeometryReader{ geo in
                if(self.isVisible){
                    TopHeaderView()
                        .background(LinearGradient(gradient: Constants.DeepGreenGradient, startPoint: UnitPoint(x: 0.5, y: -1.4), endPoint: UnitPoint(x: 0.5, y: 3.9)))
                        .ignoresSafeArea()
                }
                else{
//                    TopHeaderView()
//                        .background(LinearGradient(gradient: Constants.DeepGreenGradient, startPoint: UnitPoint(x: 0.5, y: -1.6), endPoint: UnitPoint(x: 0.5, y: 3.9)))
//                        .ignoresSafeArea()
                    TopHeaderView()
                        .ignoresSafeArea()
                }
                
            }
           
//            if self.isVisible == true{
//                TopHeaderView().ignoresSafeArea()
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
