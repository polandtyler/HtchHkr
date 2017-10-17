//
//  DriverAnnotation.swift
//  HtchHkr
//
//  Created by Tyler Poland on 10/14/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DriverAnnotation: NSObject, MKAnnotation {
/* LEARNING NOTE:
     So, Swift by default gives all vars a static type. since
     `coordinate` needs obj-c interoperability, it needs to be
     declared as a dynamic variable. sheeeeeeeesh.
     
     sidenote: this only hapens because of some
     stuff that's happening inside of the CLLocationCoordinate
     code
*/
    dynamic var coordinate: CLLocationCoordinate2D
    var key: String
    
    init(coordinate: CLLocationCoordinate2D, withKey key: String) {
        self.coordinate = coordinate
        self.key = key
        super.init()
    }
    
    func update(annotationPosition annotation: DriverAnnotation, withCoordinate coordinate: CLLocationCoordinate2D) {
        var location = self.coordinate
        location.latitude = coordinate.latitude
        location.longitude = coordinate.longitude
        UIView.animate(withDuration: 0.2) {
            self.coordinate = location
        }
    }
    
}
