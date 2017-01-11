//
//  FacebookController.swift
//  ShareMe
//
//  Created by Florian VIDAL on 09/10/2016.
//  Copyright © 2016 Florian VIDAL. All rights reserved.
//

import UIKit
import Alamofire
import Simplicity
import SwiftyJSON
var isConnected = 0;
var idFB = "";
var jsonString : String = String()
class FacebookController: UIViewController  {
    @IBOutlet weak var login: UIButton!
    @IBAction func login(_ sender: Any) {
        Simplicity.login(Facebook()) { (accessToken, error) in
            Alamofire.request("https://graph.facebook.com/me?access_token="+accessToken!).responseJSON { response in
                let JSON2 = JSON(response.result.value)
                idFB = JSON2["id"].string!
                print(idFB)
                isConnected = 1;
                self.connected()
               // performSegue(withIdentifier: "fbConnected", sender: nil)
                
        }
        }

    }
    func connected() {
        if isConnected == 1 {
            performSegue(withIdentifier: "fbConnected", sender: idFB)
        }
    }

 
    }
    
    
