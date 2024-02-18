//
//  LoginView.swift
//  Cityfixer Login UI
//
//  Created by Kyaw Z Win on 2/17/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Image(systemName: "figure.walk.diamond")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 83) // Set a fixed size for visibility
                .foregroundColor(.yellow) // Ensure symbol color is visible
                .offset(x: 0, y: -20)
            
            Text("CityFixer")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .offset(x: 0, y: -20)
            
        }
        
        .frame(width: 393, height: 852)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.10, green: 0.35, blue: 0.06), Color(red: 0.08, green: 0.19, blue: 0.08)]), startPoint: .top, endPoint: .bottom)
        )
        .padding()
        
        VStack(spacing: 24){
            UserInput(text: $username,
                      title: "Username",
                      placeholder: "username234")
            .autocapitalization(.none)
            
            UserInput(text: $password,
                      title: "Password",
                      placeholder: "password",
                      isSecureField: true)
            
        }
        
        .padding(.horizontal)
        .padding(.top, 12)
        
        Button{
            print("Sign In")
        } label: {
            HStack{
                Text("Sign in")
                    .frontWeight(.semibold)
                
            }
            
            .foregroundColor(.white)
            .offset(x: 0, y: 26.50)
            ZStack() {
                
            }
        }
    }
    
}
    

        

NavigationLink {
    RegistrationView()
        .navigationBarBackButtonHidden(true)
    
}label: {
    HStack(spacing: 3) {
        Text("Forgot Password?")
            .fontWeight(.bold)
        
    }
    .font(.system(size: 14))
    
}



struct LoginView_Preview: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
