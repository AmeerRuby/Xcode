//
//  TitleRow.swift
//  ChatAppDemo
//
//  Created by mac mini 2018 on 21/11/2022.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://images.unsplash.com/photo-1669623313981-6af02eedb15c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80")
    var name = "Banana"
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .bold()
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(Color("xanh1"))
                .padding(10)
                .background(Color("xanhnhat"))
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Green"))
    }
}
