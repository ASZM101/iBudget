//
//  Entries.swift
//  iBudget
//
//  Created by Ehab Yamani on 6/15/23.
//

import Foundation

class EntriesItem: Identifiable{
    var id = UUID()
    var title = ""
    var isSpent = false
    
    init (title: String, isSpent : Bool=false) {
        self.title = title
        self.isSpent = isSpent
        
    }
}
