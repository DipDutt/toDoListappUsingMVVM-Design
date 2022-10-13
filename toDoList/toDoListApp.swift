//
//  toDoListApp.swift
//  toDoList
//
//  Created by dip dutt on 9/18/22.
//

import SwiftUI

@main
struct toDoListApp: App {
    
    @StateObject var ListViewModel:listViewModel = listViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                
                ListView()
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(ListViewModel)
            
        }
    }
}
