//
//  NumberPadVC.swift
//  DiabetesGeek
//
//  Created by Jeff Calog on 1/31/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import UIKit

class NumberPadVC: UIViewController {

    static func viewController() -> NumberPadVC? {
        return UIStoryboard(name: "NumberPad", bundle: nil).instantiateInitialViewController() as? NumberPadVC
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
