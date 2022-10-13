//
//  noItemsView.swift
//  toDoList
//
//  Created by dip dutt on 9/21/22.
//

import SwiftUI




struct noItemsView: View {
    
    @State var animated:Bool = false
    
    let  secondaryaccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        
        
        
        
        /*
         
         1. apperance of noitemview with animation
         2. also use onappear method.
         
         
         */


        
        
        ScrollView {
            
            VStack(spacing: 10) {
                
                Text("NO ITEMS ARE HERE")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("if you are a productive person, you will press this add button which is beloew this line  to add some items in your tolist")
                    .foregroundColor(Color.orange)
                
                    .padding(.bottom, 20)
                
                
                NavigationLink {
                    
                    addView()
                    
                } label: {
                    
                    Text("Add Something🤩")
                        .foregroundColor(.white)
                        .frame(height: 60)
                        .frame(maxWidth:.infinity)
                        .background(animated ? secondaryaccentColor : Color.accentColor)
                        .cornerRadius(10)
                    
                }
                
                .padding(.horizontal, animated ? 20 : 40)
                .shadow(color: animated ? secondaryaccentColor.opacity(0.7) : Color.accentColor.opacity(0.7), radius:animated ? 30:10 , x:0 , y: animated ? 50: 30)
                .scaleEffect(animated ? 1.1 : 1.0)
            
                .offset( y: animated ? -7 : 0)
                
              

                
                
                
                
                
                
            }
            
            
            .multilineTextAlignment(.center)
            
            .padding(40)
            
            
            .onAppear {
                
                addAnimation()
            }
            
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
    
    
    // MARK: CREATE A FUCTION FOR ANIMATION AND PUT A LOGIC WHEN THE VIEW APPEARS FOR THE SCEOND TIME.
    
    
    func addAnimation() {
        
        
    guard !animated else{return}
        
        
        
        
        
        
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            
            
            withAnimation(
            
            
                Animation.easeInOut(duration: 2.0)
                    .repeatForever()
            
            
            ) {
                
                
                animated.toggle()
            }
            
            
        }
            
            
        
        
        
        
    }
        
    
}

struct noItemsView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            
        noItemsView()
            
                .navigationTitle("Tittle")
            
            
        }
    }
}
