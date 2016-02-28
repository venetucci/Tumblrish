//
//  ComposeViewController.swift
//  Tumblrish
//
//  Created by Michelle Harvey on 2/27/16.
//  Copyright © 2016 Michelle Venetucci Harvey. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        textButton.frame.origin.y = 600
        photoButton.frame.origin.y = 600
        quoteButton.frame.origin.y = 600
        linkButton.frame.origin.y = 600
        chatButton.frame.origin.y = 600
        videoButton.frame.origin.y = 600
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.2, delay: 0, options: [ ], animations: { () -> Void in
                self.photoButton.frame.origin.y = 142
        }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.05, options: [ ], animations: { () -> Void in
                self.quoteButton.frame.origin.y = 142
                self.chatButton.frame.origin.y = 275
        }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.1, options: [ ], animations: { () -> Void in
                self.textButton.frame.origin.y = 142
                self.linkButton.frame.origin.y = 275
        }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.15, options: [ ], animations: { () -> Void in
                self.videoButton.frame.origin.y = 275
        }, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didPressNevermind(sender: AnyObject) {
        
        UIView.animateWithDuration(0.2, delay: 0, options: [ ], animations: { () -> Void in
                self.photoButton.frame.origin.y = -253
                self.chatButton.frame.origin.y = -120
            }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.1, options: [ ], animations: { () -> Void in
                self.textButton.frame.origin.y = -253
                self.quoteButton.frame.origin.y = -253
                self.chatButton.frame.origin.y = -120
                self.videoButton.frame.origin.y = -120
            }, completion: nil)
        
        UIView.animateWithDuration(0, delay: 0.13, options: [ ], animations: { () -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
            }, completion: nil)
        
        
        
    }
}
