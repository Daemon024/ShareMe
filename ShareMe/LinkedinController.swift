//
//  LinkedinController.swift
//  ShareMe
//
//  Created by Developer on 03/01/2017.
//  Copyright © 2017 Florian VIDAL. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
class LinkedinController: UIViewController {
  
    @IBAction func ExecLinkedinConnection(_ sender: UIButton){
        LISDKSessionManager.createSession(withAuth: [LISDK_BASIC_PROFILE_PERMISSION], state: nil, showGoToAppStoreDialog: true, successBlock: { (success) in
     let url = "https://api.linkedin.com/v1/people/~"
        if(LISDKSessionManager.hasValidSession()){
            LISDKAPIHelper.sharedInstance().getRequest(url, success: { (response) in
                
               let JSON2 = JSON(response?.data)
                
                }, error: {(error) in
                    print(error)
            })
            }
        }){(error)in
            print("error\(error)")
        }
    } 
}
