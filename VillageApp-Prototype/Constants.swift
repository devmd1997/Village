//
//  Constants.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 9/19/21.
//

import Foundation
import SwiftUI


struct Constants {
    //Colors
    static let BrightGreen = Color("BrightGreen")
    static let SelectGreen = Color("SelectGreen")
    static let AshGreen = Color("AshGreen")
    static let ChalkWhite = Color("ChalkWhite")
    static let CreamGreen = Color("CreamGreen")
    static let DarkGreen = Color("DarkBackgroundGreen")
    static let DarkGray = Color("DarkGray")
    static let ForestGreen = Color("ForestGreen")
    static let Fuchia = Color("Fuchia")
    static let Jade = Color("Jade")
    static let JungleGreen = Color("JungleGreen")
    static let MintGreen = Color("MintGreen")
    static let SoftForestGreen = Color("SoftForestGreen")
    static let LightMint = Color("LightMint")
    static let LimeGreen = Color("LimeGreen")
    //Gradients
    static let DeepGreenGradient = Gradient(colors: [Color("SoftForestGreen"), Color("ForestGreen")])
    static let MintBackgroundGradient = Gradient(colors: [Color("BackgroundGreen"), Color("DarkBackgroundGreen")])
    static let DarkMintGradient = Gradient(colors: [Color("JungleGreen"), Color("Jade")])
    static let MossBackgroundGradient = Gradient(colors: [Color("ChalkWhite"), Color("CreamGreen")])
    //Bounds
    static let ProfileCardWidth = UIScreen.main.bounds.width * 0.8
}
