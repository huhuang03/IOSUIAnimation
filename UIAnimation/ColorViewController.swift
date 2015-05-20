//
//  ColorViewController.swift
//  UIAnimation
//
//  Created by Tonghu_Yi on 5/20/15.
//  Copyright (c) 2015 Tonghu_Yi. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    @IBOutlet weak var testView: UIView!

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) {
            self.testView.backgroundColor = UIColor.redColor()
            self.label.textColor = UIColor.whiteColor()
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
