//
//  listViewModel.swift
//  toDoList
//
//  Created by dip dutt on 9/19/22.
//

import Foundation





class listViewModel:ObservableObject {
    
    @Published var items:[itemModel] = [] {
        
        
        didSet {
            
            
            saveItems()
        }
    }
    let forKeyTittle:String = "items_list"
    
    
    init() {
        
        
        getItems()
        
        
    }
    
    
 // MARK: FUNCTIONS SECTION FOR VIEWMODELS AND FOR VIEWS.
    
    
    
    
    /*
     1. ENCODING AND DECONDING
     2. ADD, DELETE,SAVE,UPDATE IN ITEMS.
     */

    
     
     
    
    
    func getItems() {
        
        

        
        guard
            let data = UserDefaults.standard.data(forKey: forKeyTittle),
            let savedItems = try? JSONDecoder().decode([itemModel].self, from: data)
        
        
        else { return }
        
       
        self.items = savedItems
        
        
        
    }
    
    
    
    func deleteItems(indexset:IndexSet) {
        
        
        items.remove(atOffsets: indexset)
        
        
        
        
    }
    
    
    func moveitems(from: IndexSet, to:Int) {
        
        items.move(fromOffsets: from, toOffset: to)
        
        
        
    }
    
    func additem(tittle:String) {
        
        
        let newItem = itemModel(tittle:tittle, isCompleted: false)
        
        items.append(newItem)
        
        
        
        
    }
    
    // MARK: CHECK THE ID OF THE NEW ITEM
    
    func updateItem(item:itemModel) {
        
        
        
        if let  index = items.firstIndex(where: {$0.id == item.id}) {
        
            items[index] = item.updatCompletion()
            
            
            
            
        }
            
            
            
            
            
            
            
            
        }
    
    

    
    func saveItems() {
        
        
        if let encodedData = try? JSONEncoder().encode(items) {
            
            UserDefaults.standard.set(encodedData, forKey:forKeyTittle)
            
            
            
            
        }
        
        
        
        
        
    }
        
        
        
        
        
        
    }
    
    
    
    
    
    

