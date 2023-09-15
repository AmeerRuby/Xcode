//
//  Friendlist.swift
//  Zaloapp2
//
//  Created by Nguyễn Việt Thái on 01/10/2022.
//

import Foundation

class FriendList:ObservableObject{
    @Published var friendInfo:[FriendInfo] = []
    
    func getFriendInfo(){
        friendInfo = [ FriendInfo(name:"Nguyen Thao Ngan", phone: "Phone number: 09030028910",image: "Ngan"),
                       FriendInfo(name:"Nguyen Trong Phuc", phone: "Phone number: 09020028910",image: "Phuc"),
                       FriendInfo(name:"On Tuan Phong", phone: "Phone number: 09030058910",image: "Ha"),
                       FriendInfo(name:"Ma Duc Trung", phone: "Phone number: 08030028410",image: "Trung"),
                       FriendInfo(name:"Pham Thi Bich Lieu", phone: "Phone number: 09067028910",image: "Lieu")]
    }
}
