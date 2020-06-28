//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Erik Littwin on 28.06.20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = String(format: "%.1f", bmi?.value ?? 0.0)
        adviceLabel.text = bmi?.advice ?? ""
        view.backgroundColor = bmi?.color ?? UIColor.systemBackground
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
