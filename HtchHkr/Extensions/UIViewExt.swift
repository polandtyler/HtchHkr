//
//  UIViewExt.swift
//  HtchHkr
//
//  Created by Tyler Poland on 10/2/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import UIKit

extension UIView {
    func fadeTo(alphaValue: CGFloat, withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            self.alpha = alphaValue
        }
    }
}
