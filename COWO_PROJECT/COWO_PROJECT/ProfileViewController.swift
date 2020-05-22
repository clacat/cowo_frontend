//
//  File.swift
//  COWO_PROJECT
//
//  Created by Claudia Catapano on 22/05/2020.
//  Copyright © 2020 Claudia Catapano. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
 
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
         super.viewDidLoad()
   
        profilePic.layer.cornerRadius = 50
        
//        nameLabel.font = UIFont(name: "Gotham Book", size: 21)
        
        
    }
}
