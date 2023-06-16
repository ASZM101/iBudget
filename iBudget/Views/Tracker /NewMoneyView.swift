//
//  NewMoneyView.swift
//  iBudget
//
//  Created by Ehab Yamani on 6/15/23.
//


import SwiftUI

struct NewMoneyView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @Binding var showNewTask : Bool
    @State var title: String
    @State var isSpent : Bool
    @State var now = Date.now
    
    var body: some View {
        ZStack {
            Color("c")
                .ignoresSafeArea ()
            VStack {
                Text ("Add New Activity")
                    .font(.custom("GillSans", fixedSize: 30))                    .fontWeight(.bold)
                    .foregroundColor(Color("g"))
                TextField( "Enter the transaction description", text:$title)
                    .font(.custom("GillSans", fixedSize: 20))
                    .padding()
                    .background()
                    .cornerRadius(20)
                    .padding()
                
                Toggle("Is This An Expense?", isOn: $isSpent)
                    .font(.custom("GillSans", fixedSize: 20))
                    .toggleStyle(SwitchToggleStyle(tint: Color("r")))
                .foregroundColor(Color("b"))
                .padding()
                
                Button(action:{
                    self.addTask(title: self.title,isSpent: self.isSpent)
                    self.showNewTask = false
                    
                }){
                    Text("Add")
                        .font(.custom("GillSans", fixedSize: 20))
                        .foregroundColor(Color("r"))
                }
                .padding()
            }
        }
    }
    private func addTask (title: String, isSpent: Bool = false){
        let task = Track(context: context)
        task.id = UUID()
        task.title = title
        task.isSpent = isSpent
        
        do{
            try context.save()
        } catch {
            print (error)
        
        }
        
    }

}

struct NewMoneyView_Previews: PreviewProvider {
    static var previews: some View {
        NewMoneyView(showNewTask:.constant(true), title: "", isSpent: false )
    }
}
