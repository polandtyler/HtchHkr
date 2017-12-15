//
//  RoundMapView.swift
//  HtchHkr
//
//  Created by Tyler Poland on 12/15/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import UIKit
import MapKit

class RoundMapView: MKMapView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 10.0
    }
}
