//
//  ContentView.swift
//  Vintage
//
//  Created by Matthew Copson on 05/08/2023.
//

import SwiftUI
import CoreData



struct ContentView: View {
    
  
        
let heartImage = Image(systemName: "heart.fill")
    
    @State private var email = ""
    @State private var pass = ""
    @State private var keyboardHeight: CGFloat = 0
    
    private func login(username: String, password:String) -> Bool {
        if (username == "123") && (password == "456"){
            return false}else{
                return true
            }
    }
    
    
    
    
    
    var body: some View {
        VStack{
            Text("Vintage Liquid Taphouse")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding([.top, .bottom], 40)
            Image("logo")
                .resizable()
                .frame(width: 250, height: 250)
                .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.bottom, 50)
            VStack(alignment: .leading, spacing: 10) {
                
                TextField("Email", text: self.$email)
                    .padding()
                    .padding(.bottom, keyboardHeight)
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                SecureField("Password", text: self.$pass)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
            }.padding([.leading, .trailing], 30.0)
            
            Button(action: {}) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .cornerRadius(15.0)
            }
            Spacer()
        }.background(
            LinearGradient(gradient: Gradient(colors: [.black, .gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
        
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
