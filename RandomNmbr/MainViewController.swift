//
//  ViewController.swift
//  RandomNmbr
//
//  Created by Даниил Хантуров on 03.01.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minimumValue: UILabel!
    @IBOutlet var maximumValue: UILabel!
    @IBOutlet var randomValue: UILabel!
    @IBOutlet var getResultButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        getResultButtom.layer.cornerRadius = 15
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
            settingsVC.minimumValue = minimumValue.text
            settingsVC.maximumValue = maximumValue.text
    }
    
    @IBAction func getResult() {
        let minimumValue = Int(String(minimumValue.text ?? " ")) ?? 0
        let maximumValue = Int(String(maximumValue.text ?? " ")) ?? 100
        
        randomValue.text = String(Int.random(in: minimumValue...maximumValue))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minimumValue.text = settingsVC.minimumValueTF.text
        maximumValue.text = settingsVC.maximumValueTF.text

    }
    
}

