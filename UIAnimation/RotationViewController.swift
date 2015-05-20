//
//  RotationViewController.swift
//  UIAnimation
//
//  Created by Tonghu_Yi on 5/20/15.
//  Copyright (c) 2015 Tonghu_Yi. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        rotation()
    }
    
    var disppeared = false
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        disppeared = true
    }
    
    func rotation() {
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: {
            self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, CGFloat(M_PI))
            }) { (rst: Bool) -> Void in
                if !self.disppeared {
                    self.rotation()
                }
        }
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
