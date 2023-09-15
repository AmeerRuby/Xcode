//
//  ContentView.swift
//  True Map
//
//  Created by Nguyễn Việt Thái on 25/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SearchView()
                .navigationBarHidden(true)
        }
      }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
