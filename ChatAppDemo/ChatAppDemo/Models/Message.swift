//
//  Message.swift
//  ChatAppDemo
//
//  Created by mac mini 2018 on 21/11/2022.
//

import Foundation

struct Message: Identifiable, Codable  {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
