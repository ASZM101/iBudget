//
//  ContentView.swift
//  iBudget
//
//  Created by Adriana Zambrano on 6/12/23.
//

import SwiftUI

struct ContentView: View {
//    let persistenceController = PersistenceController.shared
    
    @State private var selectedTab: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
       
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 0.976, green: 0.963, blue: 0.893))
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Test(selectedTab: $selectedTab)
                
            }
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
                
