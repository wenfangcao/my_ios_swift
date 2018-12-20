//
//  SwitchingViewController.swift
//  my_ios_8
//
//  Created by xb on 2018/12/20.
//  Copyright © 2018 xb. All rights reserved.
//

import UIKit

class SwitchingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        blueViewController = storyboard?.instantiateViewController(withIdentifier: "Blue")
            as! BlueViewController
        blueViewController.view.frame = view.frame
        switchViewController(from: nil, to: blueViewController)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        if blueViewController != nil &&
            blueViewController!.view.superview == nil {
            blueViewController = nil
        }
        if yellowViewController != nil &&
            yellowViewController!.view.superview == nil {
            yellowViewController = nil
        }
    }
    
    private func switchViewController(from fromVC: UIViewController?, to toVC: UIViewController?) {
        if fromVC != nil {
            fromVC!.willMove(toParent: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParent()
        }
        if toVC != nil {
            self.addChild(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParent: self)
        }
    }
    
    private var blueViewController: BlueViewController!
    private var yellowViewController: YellowViewController!
    
    @IBAction func switchViews(sender: UIBarButtonItem) {
        if yellowViewController?.view.superview == nil {
            if yellowViewController == nil {
                yellowViewController =
                    storyboard?.instantiateViewController(withIdentifier: "Yellow")
                    as! YellowViewController
            }
        } else if blueViewController?.view.superview == nil {
            if blueViewController == nil {
                blueViewController =
                    storyboard?.instantiateViewController(withIdentifier:"Blue")
                    as! BlueViewController
            }
        }
        
        UIView.beginAnimations("view flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeOut)
        
        if blueViewController != nil
            && blueViewController!.view.superview != nil {
            yellowViewController.view.frame = view.frame
            switchViewController(from: blueViewController, to: yellowViewController)
        } else {
            blueViewController.view.frame = view.frame
            switchViewController(from: yellowViewController, to: blueViewController)
        }
        
        UIView.commitAnimations()
    }

}
