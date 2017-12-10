//
//  RoundImageView.swift
//  HtchHkr
//
//  Created by Tyler Poland on 10/1/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import UIKit

class RoundImageView: UIImageView {

    override func awakeFromNib() {
        setupView()
    }

    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }

}
