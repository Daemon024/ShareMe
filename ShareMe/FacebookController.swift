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
var isConnected = 0;
var idFB = "629906840517434";
var jsonString : String = String()
class FacebookController: UIViewController {
    
    @IBOutlet weak var login: UIButton!
    @IBAction func login(_ sender: Any) {
        Simplicity.login(Facebook()) { (accessToken, error) in
            Alamofire.request("https://graph.facebook.com/me?access_token="+accessToken!).responseJSON { response in
                print(response.request!)  // original URL request
                print(response.response!) // HTTP URL response
                print(response.data!)     // server data
                print(response.result)   // result of response serialization
                let FacebookID = response.data
             
                isConnected = 1;
                self.connected()
               // performSegue(withIdentifier: "fbConnected", sender: nil)
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
//                    idFB = "629906840517434"
//                    idFB = JSON["id"].stringValue as! [String:AnyObject]
                    print(idFB)
                    
                }
            }
        }

    }
    func connected() {
        if isConnected == 1 {
            performSegue(withIdentifier: "fbConnected", sender: nil)
        }
    }

 
    }
    
    
