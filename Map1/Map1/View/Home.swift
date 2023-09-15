//
//  Home.swift
//  Map1
//
//  Created by Nguyễn Việt Thái on 25/12/2022.
//

import SwiftUI
import CoreLocation

struct Home: View {
    @StateObject var mapData = MapViewModel()
    
    @State var locationManager = CLLocationManager()
    var body: some View {
        ZStack{
            MapView()
                .environmentObject(mapData)
                .ignoresSafeArea(.all, edges: .all)
        }
        .onAppear(perform: {
            locationManager.delegate = mapData
            locationManager.requestWhenInUseAuthorization()
        })
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
