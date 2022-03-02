//
//  StarterScreen.swift
//  MyDemo
//
//  Created by Abduqaxxor on 25/2/22.
//

import SwiftUI

struct StarterScreen: View {
    
    @State var status  = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        VStack{
            if self.status {
                Homescreen()
            }
            else {
                SignInScreen()
            }
        }
        .onAppear{
            let forName = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main){ (_) in
                print("Call Notification Center")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
