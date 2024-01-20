//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Louis on 20/1/2024.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiVal: String?
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
