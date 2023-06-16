//
//  Tips.swift
//  iBudget
//
//  Created by Adriana Zambrano on 6/14/23.
//

import SwiftUI
//import NavigationTransitions

struct Tips: View {
//    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color("mediumYellow")
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    
                    Text("Financial Literacy")
                        .font(.custom("GillSans-Bold", fixedSize: 40))
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                    
                    List {
                        
                        NavigationLink(destination: TipsBasics()) {
                            
                            Text("Basic Concepts")
                                .font(.custom("GillSans", fixedSize: 25))
                           
                        }
                        .padding(10)
                        .listRowBackground(Color("lightYellow"))
                        
                        NavigationLink(destination: TipsBanks()) {
                            
                            Text("Bank Accounts")
                                .font(.custom("GillSans", fixedSize: 25))
                           
                        }
                        .padding(10)
                        .listRowBackground(Color("lightYellow"))
                        
                        NavigationLink(destination: TipsCards()) {
                            
                            Text("Credit vs. Debit")
                                .font(.custom("GillSans", fixedSize: 25))
                           
                        }
                        .padding(10)
                        .listRowBackground(Color("lightYellow"))
                        
                        NavigationLink(destination: TipsBudget()) {
                            
                            Text("Budgeting")
                                .font(.custom("GillSans", fixedSize: 25))
                           
                        }
                        .padding(10)
                        .listRowBackground(Color("lightYellow"))
                        
                        NavigationLink(destination: TipsInvest()) {
                            
                            Text("Investments")
                                .font(.custom("GillSans", fixedSize: 25))
                           
                        }
                        .padding(10)
                        .listRowBackground(Color("lightYellow"))
                        
                    }
                    .listStyle(.insetGrouped)
                    .scrollContentBackground(.hidden)
                    .padding(.horizontal, 20)
                    .shadow(color: Color("darkGray"), radius: 10, x: 0, y: 5)
                    
                    NavigationLink(destination: Quiz()) {
                        
                        ZStack {
                            Color("darkYellow")
                                .clipShape(Capsule())
                            Text("Take Quiz")
                                .foregroundColor(Color("white"))
                                .font(.custom("GillSans-Bold", fixedSize: 30))
                            
                        }
                        .frame(width: 230, height: 60)
                        
                    }
                    
                    Spacer()
                                        
                }
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbarBackground(Color.pink, for: .navigationBar)
//        .navigationTransition(.slide)
        
    }
    
}

struct Tips_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Tips()
        
    }
    
}
