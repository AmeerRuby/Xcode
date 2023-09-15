//
//  CellView.swift
//  True Grocery
//
//  Created by Nguyễn Việt Thái on 15/12/2022.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift
import SDWebImageSwiftUI

struct CellView: View{
    var data: category
    @State var show = false
    var body: some View{
        VStack{
            AnimatedImage(url: URL(string: data.pic)!).resizable().frame(height: 280)
            
            HStack{
                VStack(alignment: .leading){
                    Text(data.name)
                        .font(.title)
                        .fontWeight(.heavy)
                    Text(data.price)
                        .font(.body)
                        .fontWeight(.heavy)
                }
                
                Spacer()
                
                Button(action: {
                    self.show.toggle()
                }) {
                    Image(systemName: "arrow.right").font(.body).foregroundColor(.black).padding(14)
                    
                }.background(Color.yellow)
                    .clipShape(Circle())
            }.padding(.horizontal)
                .padding(.bottom,6)
        }.background(Color.white)
            .cornerRadius(20)
            .sheet(isPresented: self.$show) {
                OrderView(data: data)
            }
    }
}


