//
//  ListView.swift
//  toDoList
//
//  Created by dip dutt on 9/18/22.
//

import SwiftUI





struct ListView: View {
    
    @EnvironmentObject var ListViewModel: listViewModel
    
    var body: some View {
        
        
        
        
        /*
         
         1. create list and loop for the items
         2. change the listStyle.
         3.using the navagation link to segue.
         
         
         
         */
        
        
        
        
        
        ZStack {
            
            if ListViewModel.items.isEmpty {
                
                
               noItemsView()
                
                
            }
            
            
            
            else {
                
                
                List {
                    
                    ForEach(ListViewModel.items) { item in
                      
                        
                        ListRowView(item: item)
                        
                            .onTapGesture {
                                
                                withAnimation(.linear) {
                                    
                                    
                                    ListViewModel.updateItem(item: item)
                                }
                                
                                
                            }
                        
                    }
                    .onDelete(perform: ListViewModel.deleteItems)
                    .onMove(perform: ListViewModel.moveitems)
                    
                    
                    
                }
                .listStyle(PlainListStyle())
    }
            
            
            
            
    }
        
        .navigationTitle("ToDolist📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: addView())
        
        
        )
       
    }
    
    
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            
        ListView()
            
    }
        .environmentObject(listViewModel())
        
        
    }
}

