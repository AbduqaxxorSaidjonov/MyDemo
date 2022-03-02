//
//  itemPost.swift
//  MyDemo
//
//  Created by Abduqaxxor on 28/2/22.
//

import SwiftUI


extension UIScreen{
    static let width = UIScreen.main.bounds.size.width
}

struct itemPost: View {
    
    var img_url = "maaxmood_post"
    var img_url2 = "maaxmood_post"
    
    var body: some View {
        VStack(alignment: .leading){
            //header
            HStack{
                Image("maaxmood_profile").resizable()
                    .frame(width: 40,height: 40)
                    .cornerRadius(20)
                HStack{
                    Text("maaxmood").font(.system(size: 14)).fontWeight(.bold)
                    Text("follow").font(.system(size: 14)).fontWeight(.bold)
                        .foregroundColor(.red)
                    Spacer()
                    Image(systemName: "ellipsis")
                }
            }
            
            // post image
            HStack{
                Image(img_url).resizable()
                .scaledToFit()
                .frame(width: UIScreen.width / 2)
                .padding(.leading , -5)
                .padding(.trailing , -4)
                Image(img_url2).resizable()
                .scaledToFit()
                .frame(width: UIScreen.width / 2)
                .padding(.leading , -4)
                .padding(.trailing , -5)
            }
            .padding(.leading , -15)
            //horizontal bar
            HStack{
                Image(systemName: "heart").font(.system(size: 25))
                Image(systemName: "bubble.right").font(.system(size: 25))
                Image(systemName: "location").font(.system(size: 25))
                Spacer()
                Image(systemName: "bookmark").font(.system(size: 25))
            }.padding(.top,5)
            
            //description
            HStack{
            Text("Liked by abdullo_653 and").font(.system(size: 13.5))
                Text("17 others").font(.system(size: 13.5)).fontWeight(.bold)
            }.padding(.top,5)
                .padding(.bottom , 5)
            HStack{
                Text("maaxmood").font(.system(size: 13.5))
                .fontWeight(.bold)
                Text("Abduqahhor thanks for sharing this post ").font(.system(size: 13.5))
                    .lineLimit(4)
            }
            Text("September 15, 2019").font(.system(size: 13.5))
                .foregroundColor(.init(white: 0.5))
                .padding(.top,5)
        }
    }
}

struct itemPost_Previews: PreviewProvider {
    static var previews: some View {
        itemPost()
    }
}
