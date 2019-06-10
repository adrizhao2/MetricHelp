//
//  ViewController.swift
//  MetricHelp
//
//  Created by Adrianna Zhao on 6/10/19.
//  Copyright © 2019 Adrianna Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceField: UITextField!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var useMetricSwitch: UISwitch!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    let milesToKm = 1.60934
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toggleMetricSwitch(_ sender: Any) {
        if useMetricSwitch.isOn {
            distanceLabel.text = "miles"
        } else {
            distanceLabel.text = "kilometers"
        }
        resultsLabel.text = ""
    }    
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        if let distanceRun = Double(distanceField.text!) {
            if useMetricSwitch.isOn {
                let result = distanceRun * milesToKm
                resultsLabel.text = "You ran \(distanceRun) miles. That's \(result) kilometers!"
            } else {
                let result = distanceRun / milesToKm
                resultsLabel.text = "You ran \(distanceRun) kilometers. That's \(result) miles!"
            }
        } else {
            // I couldn't convert to a Double. I got a nil.
            resultsLabel.text = "Please enter a valid number without any letters, spaces, or symbols."
        }
    }
}
