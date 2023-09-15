//
//  OrderView.swift
//  True Grocery
//
//  Created by Nguyễn Việt Thái on 15/12/2022.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift
import SDWebImageSwiftUI

struct OrderView: View{
    
    var data: category
    @State var cash = false
    @State var quick = false
    @State var quantity = 0
    @Environment(\.presentationMode) var presentation
    var body: some View{
        VStack(alignment:.leading,spacing: 15){
            AnimatedImage(url: URL(string: data.pic)!)
                .resizable()
                .frame(height: UIScreen.main.bounds.height / 2 - 100)
            
            VStack(alignment: .leading, spacing: 25){
                Text(data.name)
                    .font(.title)
                    .fontWeight(.heavy)
                Text(data.price)
                    .font(.body)
                    .fontWeight(.heavy)
                Toggle(isOn:$cash){
                    Text("Cash on Delivery")
                }
                Toggle(isOn:$quick){
                    Text("Quick Delivery")
                }
                Stepper(onIncrement: {
                    self.quantity += 1
                }, onDecrement: {
                    if self.quantity != 0{
                        self.quantity -= 1
                    }
                }){
                    Text("Quantity \(self.quantity)")
                }
                Button(action:{
                    let db = Firestore.firestore()
                    db.collection("cart")
                        .document()
                        .setData(["item":self.data.name,"quantity":self.quantity,"quickdelivery":self.quick,"cashondelivery":self.cash,"pic":self.data.pic]) {
                            (err) in
                            if err != nil{
                                print((err?.localizedDescription)!)
                                return
                            }
                            self.presentation.wrappedValue.dismiss()
                        }
                }){
                    Text("Add to cart")
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 30)
                }.background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }.padding()
            
            Spacer()
            
        }
    }
}

