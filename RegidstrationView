//
//  Registration view.swift
//  Cityfixer Login UI
//
//  Created by Kyaw Z Win on 2/18/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        VStack{
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
                      placeholder: "Name234")
                .autocapitalization(.none)
            
            UserInput(text: $password,
                      title: "password",
                      placeholder: "password", isSecureField: true)
        }
        
        .padding(.horizontal)
        .padding(.top, 12)
        
        Spacer()
        
        Button {
            
            
        } label: {
            HStack(spacing: 3){
                Text("Forgot Password?")
                Text("Sign In")
                    .frontWeight(.bold)
                
            }
            .front(.system(size: 14))
        }
        
    }

   
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
