//
//  ContentView.swift
//  True Grocery
//
//  Created by Nguyễn Việt Thái on 15/12/2022.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift
import SDWebImageSwiftUI

struct ContentView: View {
    
    @State var show = false
    var body: some View {
        ZStack {
            NavigationView{
                
                Home().navigationBarTitle("Home",displayMode: .inline)
                    .toolbar{
                        ToolbarItem(placement:.navigationBarTrailing){
                            Button(action: {
                                self.show.toggle()
                            },label: {
                                Image(systemName: "cart.fill")
                                    .font(.body)
                                    .foregroundColor(.black)
                            })
                        }
                    }
            }
            if self.show{
                GeometryReader{_ in
                    
                    CartView()
                }.background(
                    Color.black.opacity(0.55)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            self.show.toggle()
                        })
            }
        }.animation(Animation.linear(duration: 1.0), value: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}













