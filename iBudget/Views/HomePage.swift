//
//  HomePage.swift
//  iBudget
//
//  Created by Ehab Yamani on 6/14/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .foregroundColor(Color(red: 0.976, green: 0.963, blue: 0.893))
                .ignoresSafeArea()
            
            VStack{
                Text("Welcome to ")
                    .font(.custom("GillSans", fixedSize: 35))
                    .fontWeight(.black)
                Text("iBudget ")
                    .font(.custom("GillSans", fixedSize: 35))                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0.32, green: 0.574, blue: 0.393))
                Text("The app for all your budgeting needs!")
                    .font(.custom("GillSans", fixedSize: 20))
                    .italic()
                    .padding(20)
      
                Spacer()
                    
            }
            .padding(20)
            
            VStack{
                //images
                HStack{
                    VStack(alignment: .leading) {
                        Image(systemName: "banknote.fill")
                            .foregroundColor(Color(red: 0.32, green: 0.574, blue: 0.393))
                            .font(.system(.title, design: .rounded))
                            .padding(10)
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(Color(red: 0.778, green: 0.363, blue: 0.333))
                            .font(.system(.title, design: .rounded))
                            .padding(10)
                        Image(systemName: "dollarsign.circle.fill")
                            .foregroundColor(Color(red: 0.238, green: 0.277, blue: 0.501))
                            .font(.system(.title, design: .rounded))
                            .padding(10)
                        Image(systemName: "lightbulb.fill")
                            .foregroundColor(Color(red: 0.937, green: 0.77, blue: 0.371))
                            .font(.system(.title, design: .rounded))
                            .padding(10)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Tracker")
                            .font(.custom("GillSans", fixedSize: 20))                           .padding(13)
                        Text("Planner")
                            .font(.custom("GillSans", fixedSize: 20))                    .padding(13)
                        Text("Calculator")
                            .font(.custom("GillSans", fixedSize: 20))               .padding(13)
                        Text("Tips")
                            .font(.custom("GillSans", fixedSize: 20))                              .padding(13)
                            
                      

                        
                    }
                }
        
                }

       
               
                }
        .navigationBarBackButtonHidden(true)
      
       
            
        }
    }


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
