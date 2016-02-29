//
//  TabBarViewController.swift
//  Tumblrish
//
//  Created by Michelle Harvey on 2/27/16.
//  Copyright © 2016 Michelle Venetucci Harvey. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var discoverBubbleImageView: UIImageView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    // fade transition / custom modal segue for compose screen
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
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
    @IBAction func didPressTab(sender: UIButton) {
        
        let previousIndex = selectedIndex
//        buttons[previousIndex].selected = false
        selectedIndex = sender.tag
        
        for button in buttons {
            button.selected = false
        }
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        
        if selectedIndex == 1 {
            hideBubble()
        } else {
            animateBubble()
        }
    }
    
    func animateBubble() {
        UIView.animateWithDuration(1.0, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: { () -> Void in
            self.discoverBubbleImageView.transform = CGAffineTransformMakeTranslation(0, -3)
            }, completion: nil)
    
    }
    
    func hideBubble() {
        discoverBubbleImageView.hidden = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        let destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 0.3
    }

    @IBAction func didPressCompose(sender: UIButton) {
        performSegueWithIdentifier("composeSegue", sender: nil)
    }
}
