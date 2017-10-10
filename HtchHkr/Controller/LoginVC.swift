//
//  LoginVC.swift
//  HtchHkr
//
//  Created by Tyler Poland on 10/4/17.
//  Copyright © 2017 Tyler Poland. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.bindToKeyboard()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleScreenTap(sender:)))
        self.view.addGestureRecognizer(tap)
    }

    @IBAction func closeLoginPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func handleScreenTap(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
}
