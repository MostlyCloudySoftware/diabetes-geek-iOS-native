//
//  HomeVC.swift
//  DiabetesGeek
//
//  Created by Jeff Calog on 1/31/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    static func viewController() -> HomeVC? {
        return UIStoryboard(name: "Home", bundle: nil).instantiateInitialViewController() as? HomeVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func createLogEntryPressed(sender: AnyObject) {
        print("create log entry")
        self.navigateToCreateLogEntry()
        
    }
    
    func navigateToCreateLogEntry() {
        if let createLogEntryVC = CreateLogEntryVC.viewController() {
            self.presentViewController(createLogEntryVC, animated: true, completion: nil)
        }
        else {
            print("Error - Failed to navigateToCreateLogEntry")
        }
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
