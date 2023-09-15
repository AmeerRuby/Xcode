//
//  Home.swift
//  True Grocery
//
//  Created by Nguyễn Việt Thái on 15/12/2022.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift
import SDWebImageSwiftUI

struct Home: View {
    
    @StateObject var categories = getCategoriesData()
    
    var body : some View {
        
        VStack{
            if self.categories.datas.count != 0{
                ScrollView(.vertical,showsIndicators: false) {
                    VStack(spacing: 15){
                        ForEach(self.categories.datas){i in
                            CellView(data: i)
                        }
                    }.padding()
                }.background(Color("Color").edgesIgnoringSafeArea(.all))
            }
            else{
                Loader()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
