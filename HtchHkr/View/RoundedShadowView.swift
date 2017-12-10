//
//  RoundedShadowView.swift
//  HtchHkr
//
//  Created by Tyler Poland on 10/1/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import UIKit

class RoundedShadowView: UIView {

    override func awakeFromNib() {
        setupView()
    }

    func setupView() {
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width: 0, height: 5)

        self.layer.cornerRadius = 5.0
    }

}
