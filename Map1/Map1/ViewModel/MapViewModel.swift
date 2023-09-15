//
//  MapViewModel.swift
//  Map1
//
//  Created by Nguyễn Việt Thái on 25/12/2022.
//

import Foundation
import SwiftUI
import MapKit
import CoreLocation

class MapViewModel: NSObject,ObservableObject,CLLocationManagerDelegate{
    @Published var mapView = MKMapView()
    
    @Published var region : MKCoordinateRegion!
    
    //Alert...
    @Published var permissionDenied = false
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        //Checking permissions...
        switch manager.authorizationStatus{
        case .denied:
            //Alert...
            permissionDenied.toggle()
        case .notDetermined:
            //Requesting...
            manager.requestWhenInUseAuthorization()
        default:
            ()
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        //Error..
        print(error.localizedDescription)
    }
}
