//
//  Tracker.swift
//  iBudget
//
//  Created by Ehab Yamani on 6/14/23.
//

import SwiftUI

struct Tracker: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(
            entity: Track.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \Track.id, ascending: false) ])
        
    var entriesItem: FetchedResults<Track>

    @State private var showNewTask = false
    
    var body: some View {
        ZStack {
            Color("c")
                .ignoresSafeArea ()
            
            VStack {
                Text ("Tracker")
                     .font(.custom("GillSans", fixedSize: 30))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("r"))
                    .padding()
                List{
                    if entriesItem.isEmpty {
                        Text("")
                            .listRowBackground(Color("c"))
                            .listRowSeparator(.hidden)
                            .hidden()
                            .accessibility(hidden: true)
                    } else {
                        ForEach(entriesItem){ entriesItem in
                            if entriesItem.isSpent == true {
                                Text("-" + " " + (entriesItem.title ?? "No title"))
                                    .foregroundColor(Color ("r"))
                            } else{
                                Text( "+" + " " +  (entriesItem.title ?? "No title"))
                                    .foregroundColor(Color("g"))
                            }
                        }
                        .onDelete(perform: deleteTask)
                    }
                    
                }
                .background(Color("c"))
                .scrollContentBackground(.hidden)
             
                Button(action: {
                    self.showNewTask = true
                    
                }) {
                    Text("+ Add Expense")
                        .font(.custom("GillSans", fixedSize: 20))                        .fontWeight(.bold)
                        .foregroundColor(Color("g"))
                }
                
                
            }
            if  showNewTask{
                NewMoneyView(showNewTask:$showNewTask, title: "", isSpent: false)
                
            }
        }
    }
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { entriesItem[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
    
        struct Tracker_Previews: PreviewProvider {
            static var previews: some View {
                Tracker()
            }
        }
    }

