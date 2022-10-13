//
//  itemModel.swift
//  toDoList
//
//  Created by dip dutt on 9/19/22.
//

import Foundation


/*
 
 1. create struct and method for the listViewmodel.
 
 
 
 */
struct itemModel:Identifiable,Codable {
    let id: String
    let tittle:String
    let isCompleted:Bool
    
    
    init(id: String = UUID().uuidString, tittle:String, isCompleted:Bool) {
        
        
        self.id =  id
        self.tittle = tittle
        self.isCompleted = isCompleted
    
        
        
        
        
        
        
    }
    
    // MARK: CREATE A METHOD TO INTERACT WITH THE UPDATEITEM FUNCTION IN THE VEWMODELS.
    
    
    func updatCompletion()-> itemModel {
        
        
        return itemModel(id: id, tittle: tittle, isCompleted: !isCompleted)
        
        
        
        
    }
    
    
    
    
}
