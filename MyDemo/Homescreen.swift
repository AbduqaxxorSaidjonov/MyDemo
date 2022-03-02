//
//  Homescreen.swift
//  MyDemo
//
//  Created by Abduqaxxor on 28/1/22.
//

import SwiftUI
import MapKit

struct Homescreen: View , BindingDelegate {
    
    @State var showDetail = false
    @State var data = "No Data"
    
    func onReceived(value: String) {
        data = value
    }
    
    var body: some View {
        NavigationView{
            
        List{
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    AddStory()
                    itemStory()
                }
            }
            .frame(height: 100)
            itemPost(img_url: "maaxmood_post",img_url2: "maaxmood_post")
            itemPost(img_url: "post2",img_url2: "post2")
            itemPost(img_url: "spark_post",img_url2: "spark_post")
        }
        .listStyle(PlainListStyle())
        .navigationBarItems(leading: Image(systemName: "camera")
                                .foregroundColor(.red),
                            trailing:
                                Button(action: {
            UserDefaults.standard.set(false ,forKey: "status")
            NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
        }, label: {
            Image(systemName: "person").foregroundColor(.red)
        }))
        .navigationBarTitle("Instagram",displayMode: .inline)
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}

