//
//  itemStory.swift
//  MyDemo
//
//  Created by Abduqaxxor on 1/3/22.
//

import SwiftUI

struct itemStory: View {
    var body: some View {
        VStack{
            Image("maaxmood_profile").resizable().frame(width: 70, height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35)
                            .stroke(Color.pink , lineWidth: 3))
            Text("maaxmood").font(.system(size: 13.5))
        }.padding(.trailing , 10).frame(height: 100)
    }
}

struct itemStory_Previews: PreviewProvider {
    static var previews: some View {
        itemStory()
    }
}
