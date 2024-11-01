//
//  IntroScreen.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

struct IntroScreen: View {
    @AppStorage("isFirstTime") private var isFirstTime:Bool=true
    var body: some View {
        VStack(spacing: 15){
            Text("Starter App IOS ")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top ,65)
                .padding(.bottom,45)
            VStack(alignment: .leading,spacing: 15){
                PointView(
                    symbol: "star.fill",
                    title: "Start App ios ",
                    subTitle:"Keep start App ios with development ."
                )
                PointView(symbol: "chart.bar.fill",
                          title: "Visual Charts",
                          subTitle: "View your transactions using eye-catching graphic representations.")
                
                PointView(symbol: "magnifyingglass",
                          title: "Advance Filters",
                          subTitle: "Find the expenses you want by advance search and filtering.")
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.horizontal,25)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime=false
            }, label: {
                Text("Continue")
                    .foregroundStyle(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.vertical,14)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(appTint.gradient ,in:.rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
            .padding(15)
            .padding(.bottom,16)
            
        }
    }
    
    @ViewBuilder
    func PointView(symbol:String,title:String,subTitle:String)  -> some View {
        HStack(spacing: 20){
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            VStack(alignment: .leading,spacing: 6){
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .foregroundStyle(.gray)
            }
            
        }
            
    }
    
}

#Preview {
    IntroScreen()
}
