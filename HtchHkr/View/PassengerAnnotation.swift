//
//  PassengerAnnotation.swift
//  HtchHkr
//
//  Created by Tyler Poland on 11/21/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import Foundation
import MapKit

class PassengerAnnotation: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var key: String

    init(coordinate: CLLocationCoordinate2D, key: String) {
        self.coordinate = coordinate
        self.key = key
        super.init()
    }

}
