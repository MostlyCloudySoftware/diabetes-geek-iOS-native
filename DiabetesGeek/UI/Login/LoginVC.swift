//
//  LoginVC.swift
//  DiabetesGeek
//
//  Created by Jeff on 1/23/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    class func viewController() -> LoginVC? {
        return UIStoryboard(name: "Login", bundle: nil).instantiateInitialViewController() as? LoginVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
