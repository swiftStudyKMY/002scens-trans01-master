//
//  SecondViewController.swift
//  002Scens-Trans01
//
//  Created by 김민영 on 11/1/19.
//  Copyright © 2019 김민영. All rights reserved.
//

import Foundation

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
