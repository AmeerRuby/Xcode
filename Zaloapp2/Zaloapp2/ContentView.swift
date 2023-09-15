//
//  ContentView.swift
//  Zaloapp2
//
//  Created by Nguyễn Việt Thái on 01/10/2022.
//

import SwiftUI



struct ContentView: View {
    @State var search = ""
    @State private var viewIndex = 0
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    Button(action: {
                        
                    }) {
                        
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 18) {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "qrcode.viewfinder")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                                    .padding(8)
                                Image(systemName:"plus")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                                    .padding(8)
                            }
                            
                        }
                    }
                    HStack{
                        Button(action:{
                            
                        }){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .frame(width:20,height:20)
                        }
                        TextField("Search", text: self.$search)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }.background(Color.blue)
                        .padding(.top,10)
                }
                .background(Color.blue)
                Picker(selection: $viewIndex, label: Text("")) {
                    Text("Tin nhắn").tag(0)
                    Text("Danh bạ").tag(1)
                    Text("Khám phá").tag(2)
                    Text("Nhật ký").tag(3)
                    Text("Cá nhân").tag(4)
                }.pickerStyle(SegmentedPickerStyle())
                if viewIndex == 0{
                } else if viewIndex == 1{
                    CustomDestinationView()
                }else if viewIndex == 2{
                }else if viewIndex == 3{
                }else if viewIndex == 4{
                }
                Spacer()
            }
        }.navigationBarTitle("")
    }
}


struct CustomDestinationView: View {
    @ObservedObject var ViewModel = FriendList()
    @State private var viewIndex = 0
    init(){
        ViewModel.getFriendInfo()
    }
    var body: some View {
        NavigationView{
            VStack{
                Picker(selection:$viewIndex,label: Text("")){
                     Text("Bạn bè").tag(0)
                     Text("Nhóm").tag(1)
                     Text("OA").tag(2)
                 }
                 .pickerStyle(SegmentedPickerStyle())
                 .background(.blue)
                if viewIndex == 0 {

                    List{
                        ForEach( ViewModel.friendInfo,id:\.self
                        ){friend in NavigationLink(destination:
                                Text(friend.phone)){
                            Image(friend.image)
                                .resizable()
                                .frame(width:50,height:50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.black,lineWidth: 2))
                            Text(friend.name)
                                .font(.subheadline)
                        }
                    }
                    }.frame( maxWidth: .infinity).edgesIgnoringSafeArea(.all)
                        .listStyle(.plain)
                        }else if viewIndex == 1 {
                            List{
                                NavigationLink(
                                    destination: Text("K20 là nhà"),
                                    label: {
                                        Label("Tù SE", systemImage: "person.circle")
                                    })
                            }.listStyle(.plain)
                }else if viewIndex == 2{
                    List{
                        NavigationLink(
                            destination: Text("Well done comrade"),
                            label: {
                                Label("The End of beta", systemImage: "trash.fill")
                            })
                    }.listStyle(.plain)
                }
                Spacer()
            }

        }.navigationBarTitle("")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
