//
//  SettingsViewController.swift
//  RandomNmbr
//
//  Created by Даниил Хантуров on 04.01.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
        
    @IBAction func closeSetting() {
        dismiss(animated: true)
    }
    
}
