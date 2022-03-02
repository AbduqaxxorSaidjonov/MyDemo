//
//  AddStory.swift
//  MyDemo
//
//  Created by Abduqaxxor on 1/3/22.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
            Image("myprofile_image").resizable()
                .frame(width: 70 ,height: 70)
                .cornerRadius(35)
                Image("ic_plus")
                    .resizable()
                    .frame(width: 26,height: 26)
                    .cornerRadius(12)
                    .overlay(RoundedRectangle(cornerRadius: 35)
                            .stroke(Color.white , lineWidth: 3))
        }
            Text("Your story").font(.system(size: 13.5))
        }
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
