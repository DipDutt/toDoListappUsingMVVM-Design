//
//  addView.swift
//  toDoList
//
//  Created by dip dutt on 9/18/22.
//

import SwiftUI

struct addView: View {
    
    @EnvironmentObject var  ListViewModel: listViewModel
    
    @State var textFieldtext:String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    
    @State var alerttitle:String = ""
    @State var isalert:Bool = false
    
    
    
    /*
     1. Showing alert if users put wrong word count on the textfield.
     
     
     */
    
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 10) {
                TextField("Type something here", text:$textFieldtext)
                    .padding(.horizontal)
                    .frame(height:55)
                    
                .background(Color.gray)
                .cornerRadius(10.0)
                
                
                Button {
                    
                    
                    buttonPressed()
                    
                } label: {
                    Text("save".uppercased())
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .padding(.horizontal)
                        .frame(height: 55)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .cornerRadius(20.0)
                }

            }
            
            .padding(14)
            
            
        }
        .navigationTitle("add an item🖊")
        
        .alert(isPresented: $isalert) {
            
            
            showalert()
            
            
            
        }
        
        
    }
    
    
    // MARK: CREATE A FUNCTION FOR THE BUTTON CONTENT.
    
    func buttonPressed() {
        
        if checkTextCount() {
        
        
        ListViewModel.additem(tittle: textFieldtext)
            
            presentationMode.wrappedValue.dismiss()
            
            
        
    }
        
        
        
        
    }
    
    
    func checkTextCount() -> Bool {
        
        
        
        
        if textFieldtext.count < 3 {
            
            
            alerttitle = "put aleast  more than 3 words in the text field 😱"
            
            
            isalert.toggle()
            
            return false
            
            
            
            }
        
        
        else {
            
            
            return true
        }
        
        
        
    }
    
    
    func showalert()-> Alert  {
        
        
        
        return Alert(title: Text(alerttitle))
        
        
        
        
        
    }
}

struct addView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            
        addView()
            
        
    }
        
        .environmentObject(listViewModel())
        
    }
}
