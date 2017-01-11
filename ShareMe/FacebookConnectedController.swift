//
//  FacebookConnectedController.swift
//  ShareMe
//
//  Created by Florian VIDAL on 10/10/2016.
//  Copyright © 2016 Florian VIDAL. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import Simplicity
var fullFBUrl = "Facebook non configuré"
class FacebookConnectedController: UIViewController {

    @IBOutlet weak var Segue1: UIButton!
    @IBOutlet weak var urlLabelText: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    @IBAction func GoHomepage(_ sender: Any) {
        performSegue(withIdentifier: "GoHomepage", sender: fullFBUrl)

    }
override func viewDidLoad() {
    urlLabelText.text = "https://facebook.com/"+idFB
    fullFBUrl = "https://facebook.com/"+idFB
    }
override func didReceiveMemoryWarning() {
    didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
}
