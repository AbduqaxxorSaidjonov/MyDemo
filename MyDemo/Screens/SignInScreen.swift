//
//  SignInScreen.swift
//  MyDemo
//
//  Created by Abduqaxxor on 22/2/22.
//

import SwiftUI

struct SignInScreen: View {
    
    @State var isModal = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("Instagram")
                .font(.system(size: 30))
            TextField("Email",text: $email)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            SecureField("Password",text: $password)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            Button(action: {
                UserDefaults.standard.set(true, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                HStack{
                    Spacer()
                Text("Sign In")
                    .foregroundColor(.white)
                    Spacer()
                }
            })
                .frame(height: 45)
            .background(Color.blue)
            .cornerRadius(8)
                
            Spacer()
            HStack{
                Text("Don't have an account?")
                Button("Sign Up"){
                    self.isModal = true
                }
                .sheet(isPresented: $isModal , content: {
                    SignUpScreen()
                })
                .font(.system(size: 18))
                .foregroundColor(.black)
            }
        }.padding()
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
