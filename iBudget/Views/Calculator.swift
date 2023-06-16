//
//  Calculator.swift
//  iBudget
//
//  Created by Ehab Yamani on 6/14/23.
//

import SwiftUI

struct Calculator: View {
    @State var totalMoney: Double = 0.0
    @State var tipPercentage: Double = 0.0
    @State var tipAmount: Double = 0.0
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 0.976, green: 0.963, blue: 0.893))
                .ignoresSafeArea()
            
            VStack {
                
                Text ("Budget Calculator")
                    .font(.custom("GillSans", fixedSize: 35))                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.238, green: 0.277, blue: 0.501))
                
                VStack {
                    
                    Text("Current Amount of Money: ")
                        .font(.custom("GillSans", fixedSize: 20))                        .padding()
                        .foregroundColor(Color(red: 0.835, green: 0.333, blue: 0.315))
                    
                    TextField("$", value: $totalMoney, format: .number)
                        .multilineTextAlignment (.center)
                        .background(Color(red: 1.0, green: 0.993, blue: 0.957))
                        .cornerRadius(30)
                        .shadow(radius: 5)

                        .font(.title)
                        .padding()
                    
                }
                .padding()
                
                VStack {
                    
                    Text("Percentage of Money to Save: ")
                        .font(.custom("GillSans", fixedSize: 20))                          .padding()
                        .foregroundColor(Color(red: 0.324, green: 0.577, blue: 0.397))
                    
                    TextField("%", value: $tipPercentage, format: .number)
                        .multilineTextAlignment (.center)
                        .font (.title)
                        .background(Color(red: 1.0, green: 0.993, blue: 0.957))
                        .cornerRadius(30)
                        .padding (20)
                        .shadow(radius: 5)
                    
                }
                .padding()
                
                Button("Calculate") {
                    
                    tipAmount = totalMoney * tipPercentage/100
                    
                }
                .font(.custom("GillSans", fixedSize: 40))                 .buttonStyle(.borderedProminent)
                .clipShape(Capsule())
                .tint(.init(red: 0.238, green: 0.277, blue: 0.501))
                
                if totalMoney != 0 && tipPercentage != 0 && tipAmount != 0 {
                    
                    //Added specifier and "%.2f"
                    Text("Money for Savings: $\(tipAmount, specifier: "%.2f")")
                        .font(.title3)
                        .padding(.all, 50)
                        .bold()
                    
                }
                
            }
            
        }
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()
    }
}
