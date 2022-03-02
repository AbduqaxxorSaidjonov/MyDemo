//
//  PresentScreen.swift
//  MyDemo
//
//  Created by Abduqaxxor on 13/2/22.
//

import SwiftUI

struct PresentScreen: View {
    
    @Environment(\.presentationMode) var presentation
    
    var data = "No Data"
    var delegate: BindingDelegate?
    
    var body: some View {
        VStack{
            Button(action: {
                delegate?.onReceived(value: "PDP Academy")
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("Back to home").font(.title)
            })
            Text("\(data)").padding()
        }
    }
}

struct PresentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PresentScreen()
    }
}
