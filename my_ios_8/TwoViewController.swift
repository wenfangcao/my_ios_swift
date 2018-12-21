//
//  TwoViewController.swift
//  my_ios_8
//
//  Created by xb on 2018/12/20.
//  Copyright © 2018 xb. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBOutlet weak var singlePicker: UIPickerView!
    private let characterNames = ["a", "b", "c"]
    
    @IBAction func getPicker(_ sender: UIButton) {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let alert = UIAlertController(title: "提示", message: "is \(selected)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
 
    


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return characterNames[row]
    }
}
