//
//  YellowViewController.swift
//  my_ios_8
//
//  Created by xb on 2018/12/20.
//  Copyright © 2018 xb. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func yellowPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "yellow View Button Pressed",
                                      message: "You pressed the button on the view",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}
