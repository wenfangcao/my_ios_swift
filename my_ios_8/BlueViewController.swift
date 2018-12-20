//
//  BlueViewController.swift
//  my_ios_8
//
//  Created by xb on 2018/12/20.
//  Copyright © 2018 xb. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bluePressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Blue View Button Pressed",
                                      message: "You pressed the button on the view",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
