//
//  DebugVC.swit
//  DiabetesGeek
//
//  Created by Jeff Calog on 2/5/16.
//  Copyright © 2016 Mostly Cloudy. All rights reserved.
//

import UIKit

class DebugVC: UIViewController {

    @IBOutlet weak var numberPad: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberPadButtonPressed(sender: AnyObject) {
        if let numberPadVC = NumberPadVC.viewController() {
            presentViewController(numberPadVC, animated: true, completion: nil)
        }
    }

    @IBAction func button2Pressed(sender: AnyObject) {
    }
    
    @IBAction func button3Pressed(sender: AnyObject) {
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
