//
//  CreateLogEntryVC.swift
//  DiabetesGeek
//
//  Created by Jeff Calog on 1/31/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import UIKit

class CreateLogEntryVC: UIViewController {

    static func viewController() -> CreateLogEntryVC? {
        return UIStoryboard(name: "CreateLogEntry", bundle: nil).instantiateInitialViewController() as? CreateLogEntryVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveButtonPressed(sender: AnyObject) {
        print("saveButtonPressed")
    }
    
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
