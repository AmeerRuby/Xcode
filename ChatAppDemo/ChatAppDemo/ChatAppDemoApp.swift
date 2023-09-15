//
//  ChatAppDemoApp.swift
//  ChatAppDemo
//
//  Created by mac mini 2018 on 21/11/2022.
//

import SwiftUI
import Firebase

@main
struct ChatAppDemoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
