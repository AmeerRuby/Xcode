//
//  ContentView.swift
//  ChatAppDemo
//
//  Created by mac mini 2018 on 21/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesManager.messages, id: \.id) { message in MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(Color("xanhduong"))
                .cornerRadius(30, corners: [.topLeft,.topRight])
                .onChange(of: messagesManager.lastMessageId) {
                    id in withAnimation {
                        proxy.scrollTo(id, anchor: .bottom)
                    }
                }
                }
            }
            .background(Color("Yellow"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
