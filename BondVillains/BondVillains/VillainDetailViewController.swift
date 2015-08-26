//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by Tomahawk Africa Tindo on 8/26/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class VillainDetailViewController: UIViewController {
    
    var villain: Villain?
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var villainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.textLabel.text = villain?.name
        var imageName = villain!.imageName
        println(imageName)
        self.villainImage.image = UIImage(named: imageName)
    }
}
