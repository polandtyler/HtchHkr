//
//  CenterVCDelegate.swift
//  HtchHkr
//
//  Created by Tyler Poland on 10/2/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import Foundation
import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    func animateLeftPanel(shouldExpand: Bool)
}
