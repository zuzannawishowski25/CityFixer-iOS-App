//
//  UserInput.swift
//  Cityfixer Login UI
//
//  Created by Kyaw Z Win on 2/18/24.
//

import SwiftUI

struct UserInput: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
                
            }
            
            Divider()
        }
    }
    
    struct UserInput_Previews: PreviewProvider {
        typealias Previews = <#type#>
        
        static var previews: some view {
            UserInput(text: .constant(""));, title: "Username", placeholder:
                "username234")
        }
    }
}

