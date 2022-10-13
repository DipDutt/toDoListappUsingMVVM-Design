//
//  ListRowView.swift
//  toDoList
//
//  Created by dip dutt on 9/18/22.
//

import SwiftUI
        
        struct ListRowView: View {
            
             let item:itemModel
        
            var body: some View {
                HStack {
                    
                    Image(systemName: item.isCompleted ? "checkmark.circle":"circle")
                    .foregroundColor(item.isCompleted ? Color.green : Color.red)
                    Text(item.tittle)
                    Spacer()
                    
                }
                .font(.title2)
                .padding(.vertical , 8)
            }
        }

        



struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = itemModel(tittle: "first item", isCompleted: false)
    static var item2 = itemModel(tittle: "second item", isCompleted: true)
    
    static var previews: some View {
        
        Group {
            
            ListRowView(item: item1)
            ListRowView(item: item2)
            
            
        }
        
        
    }
}
