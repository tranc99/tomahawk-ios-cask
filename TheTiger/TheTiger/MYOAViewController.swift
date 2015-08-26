//
//  MYOAViewController.swift
//  TheTiger
//
//  Created by Tomahawk Africa Tindo on 8/25/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class MYOAViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .Plain, target: self, action: "startOver")
        
    }
    
    func startOver() {
        if let navigationController = self.navigationController {
            navigationController.popToRootViewControllerAnimated(true)
        }
    }
    
    deinit {
        println("MYOAViewController Deallocated")
    }
}
