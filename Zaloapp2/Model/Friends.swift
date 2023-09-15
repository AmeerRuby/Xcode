//
//  Friends.swift
//  Zaloapp2
//
//  Created by Nguyễn Việt Thái on 01/10/2022.
//


import Foundation

struct FriendInfo: Hashable,Identifiable{
    let name : String
    let phone : String
    let image: String
    let id=UUID()
}
