//
//  SignUpScreen.swift
//  MyDemo
//
//  Created by Abduqaxxor on 22/2/22.
//

import SwiftUI

struct SignUpScreen: View {
    
    @Environment(\.presentationMode) var presentation
    @State var fullname = ""
    @State var email = ""
    @State var phone = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("Instagram").font(.system(size: 30))
            
            TextField("Fullname", text: $fullname)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            TextField("Eamil" , text: $email)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            TextField("Phone" , text: $phone)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            SecureField("Password",text: $password)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            Button(action: {
                
            }, label: {
                HStack{
                 Spacer()
                    Text("Sign Up")
                        .foregroundColor(.white)
                    Spacer()
                }
            })
                .frame(height: 45)
                .background(Color.blue)
                .cornerRadius(8)
            Spacer()
            HStack{
            Text("Already have an account?")
                Button("Sign In"){
                    presentation.wrappedValue.dismiss()
                }
                .font(.system(size: 18))
                .foregroundColor(Color.black)
            }
        }.padding()
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
