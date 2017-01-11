//
//  ViewController.swift
//  ShareMe
//
//  Created by Florian VIDAL on 09/10/2016.
//  Copyright © 2016 Florian VIDAL. All rights reserved.
//

import UIKit
import Simplicity
class ViewController: UIViewController {
    @IBOutlet weak var fbinfos: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if fullFBUrl == nil {
        } else if fullFBUrl != nil {
             fbinfos.text = fullFBUrl
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

