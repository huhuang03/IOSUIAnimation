//
//  PositionViewController.swift
//  UIAnimation
//
//  Created by Tonghu_Yi on 5/20/15.
//  Copyright (c) 2015 Tonghu_Yi. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
//        animate()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        animate()
    }
    
    func animate() {
        UIView.animateWithDuration(1, delay: 0, options: nil, animations: {
            println(self.firstView.center.x)
                self.firstView.center.x = self.view.bounds.width - self.firstView.center.x
            }, completion: nil)
        UIView.animateWithDuration(1, delay: 0.5, options: nil, animations: {
                self.secondView.center.y = self.view.bounds.height - self.secondView.center.y
            }, completion: nil)
        UIView.animateWithDuration(1, delay: 1, options: nil, animations: {
                self.thirdView.center.x = self.view.bounds.width - self.thirdView.center.x
                self.thirdView.center.y = self.view.bounds.height - self.thirdView.center.y
            }) {
                (resutl: Bool) in
                if !self.disappered {
                    self.animate()
                }
        }
    }
    
    var disappered: Bool = false
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        disappered = true
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
