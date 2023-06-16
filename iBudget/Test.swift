//
//  Test.swift
//  iBudget
//
//  Created by Ehab Yamani on 6/14/23.

import SwiftUI

enum Tab: String, CaseIterable {
    case banknote
    
    case plus = "plus.circle"

    case house
    
    case dollarsign = "dollarsign.circle"
    
    case lightbulb
}

struct Test: View {
    let persistenceController = PersistenceController.shared
    @Environment(\.openURL) var openURL
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch selectedTab {
        case .banknote:
            return (Color(red: 0.324, green: 0.577, blue: 0.397))
        case .plus:
            return (Color(red: 0.778, green: 0.363, blue: 0.333))
        case .house:
            return .black
        case .dollarsign:
            return (Color(red: 0.238, green: 0.277, blue: 0.501))
        case .lightbulb:
            return (Color(red: 0.937, green: 0.77, blue: 0.371))
        }
    }
    
    
    var body: some View {
        
        
        if selectedTab == .house {
            HomePage()
        }
        else if selectedTab == .lightbulb {
            Tips()
        }
        else if selectedTab == .banknote {
            Tracker().environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
        else if selectedTab == .plus {
            Planner()
        }
        else if selectedTab == .dollarsign {
            Calculator()
        }
                    
        
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage :
                            tab.rawValue)
                    .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                    .foregroundColor(selectedTab == tab ? tabColor : (Color(red: 0.603, green: 0.588, blue: 0.481)))
                    .font(.system(size: 22))
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.1)) {
                            selectedTab = tab
                        }
                    }
                    
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(Color(red: 1.002, green: 0.992, blue: 0.957))
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test(selectedTab: .constant(.house))
    }
}
