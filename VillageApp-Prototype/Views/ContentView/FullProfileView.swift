//
//  FullProfileView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/19/21.
//

import SwiftUI

struct FullProfileViewContent: View {
    var body: some View{
        VStack(spacing: 20){

            BioCard()
            ProfileInfoCard(title: "Experience", content: [("UX Designer | GF Media", "2012-2015"), ("Product Design Manager GF media", "2015-2019"), ("Senior UX Designer | Netflix", "2019 - current")])
            ProfileInfoCard(title: "Experience", content: [("UX Designer | GF Media", "2012-2015"), ("Product Design Manager GF media", "2015-2019"), ("Senior UX Designer | Netflix", "2019 - current")])
            ProfileInfoCard()
            ProfileInfoCard(title: "Certificates",
                            content: [("Security Plus", "2018"), ("AWS Solutions Architect", "2019")])
        }
    }
    
}
struct FullProfileView: View {
    @Binding var isScrollable: Bool
    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Constants.MintBackgroundGradient, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            //Probably gotta restart the whole process
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 20){
                        VStack{
                            
                        }.frame(width: 0, height: 0)
                        .id("TOP")
                        if(isScrollable){
                            ProfileCardContentView()
                                .frame(height: UIScreen.main.bounds.height * 0.4)
                            Spacer()
                            
                        }//: IF
                        else{
                            VStack{
                                Text("")
                                    
                            }.frame(height: UIScreen.main.bounds.height * 0.4)
                        }
                        FullProfileViewContent()
                    }//: VSTACK
                }// : SCROLL
                .onChange(of: isScrollable, perform: { value in
                    if(!value){
                        withAnimation(.easeInOut(duration: 1.5)){
                            proxy.scrollTo("TOP")
                        }
                    }
                })
                .disabled(!isScrollable)
            }// SCROLL READER
            if(!isScrollable){
            VStack{
                ProfileCardContentView()
                    .frame(height: UIScreen.main.bounds.height * 0.4)
                Spacer()
            }.transition(AnyTransition.opacity.animation(Animation.easeInOut(duration: 0.8)))
            }
//            VStack {
//                ScrollViewReader { proxyReader in
//                    VStack{
//                    if(!isScrollable){
//                        VStack(spacing: 20){
//                            ProfileCardContentView()
//                            .frame(height: UIScreen.main.bounds.height * 0.4)
//                        Spacer()
//                        }//: VSTACK
//                    }//: IF
//                    else{
//                        ScrollView(.vertical, showsIndicators: false){
//                            VStack(spacing: 20){
//                            ProfileCardContentView()
//                            .frame(height: UIScreen.main.bounds.height * 0.4)
//                            .id("TOP")
//                                Spacer()
//                            FullProfileViewContent()
//                            }//: VSTACK
//                            .onDisappear(perform: {
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                    print("ASYNC")
//                                    withAnimation(.spring()){
//                                        proxyReader.scrollTo("TOP")
//                                    }
//                                }
//                            })
//                        }//: SCROLLVIEW
//
//                    }//: ELSE
//                    }//: VSTACK
//
////                    .onChange(of: isScrollable, perform: { value in
////                        if(!value){
////                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
////                                print("ASYNC")
////                                withAnimation(.spring()){
////                                    proxyReader.scrollTo("TOP")
////                                }
////                            }
////                        }
////                    })
//                }//:ScrollVIewREader
//            }
            
        }
    }
}

struct FullProvfileViewPreviewTest: View {
    @State var isShow: Bool = false
    var body: some View{
        ZStack{
            
            FullProfileView(isScrollable: $isShow)
            Button(action: {
                isShow.toggle()
            }, label: {
                Text("Test")
            })
        }
    }
}
struct FullProfileView_Previews: PreviewProvider {
    static var previews: some View {
        FullProvfileViewPreviewTest()
//        FullProfileViewContent(isScrollable: )
    }
}
