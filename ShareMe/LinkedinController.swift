//
//  LinkedinController.swift
//  ShareMe
//
//  Created by Developer on 03/01/2017.
//  Copyright © 2017 Florian VIDAL. All rights reserved.
//

import Foundation
import UIKit
import LinkedinSwift
class LinkedinConnectedController: UIViewController {
  
    @IBAction func setText(_ sender: UIButton) {
        ReceiveText.text="lol"
    }
    @IBOutlet weak var ReceiveText: UILabel!
    
    let linkedinHelper = LinkedinSwiftHelper(configuration:
        LinkedinSwiftConfiguration(

       )
    )
}
