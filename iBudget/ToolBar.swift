//
//  ToolBar.swift
//  iBudget
//
//  Created by Ehab Yamani on 6/14/23.
//

import SwiftUI

struct ToolBar: View {
    var body: some View {
        HStack{
            TabView{
                Tracker()
                    .tabItem() {
                        Image(systemName: "banknote.fill")
                            .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                    }
                Planner()
                    .tabItem() {
                        Image(systemName: "plus.circle.fill")
                    }
                
                HomePage()
                    .tabItem() {
                        Image(systemName: "house.circle.fill")
                    }
                Calculator()
                    .tabItem() {
                        Image(systemName: "dollarsign.circle.fill")
                    }
                Tips()
                    .tabItem() {
                        Image(systemName: "lightbulb.fill")
                    }
                
            }
           // .onAppear() {
               // UITabBar.appearance().backgroundColor = .white
            //}
        }
        .tint(Color(red: 0.324, green: 0.577, blue: 0.397))
    }
}
struct ToolBar_Previews: PreviewProvider {
    static var previews: some View {
        ToolBar()
    }
}
