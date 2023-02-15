//
//  ViewController.swift
//  BM calculator
//
//  Created by Alua Sayabayeva on 03.02.2023.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var backGroundColor: UIView!
    @IBOutlet weak var statusTeext: UILabel!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculate(_ sender: Any) {
        let height = Double(heightText.text!)!
        let weight = Double(weightText.text!)!
        
        
        let result: Double = weight / (height * height)
        
        resultText.text = String(format: "%.1f", result)
        
        switch result{
        case Double(Int.min)...18.5:
            statusTeext.text = "Underweight"
            backGroundColor.backgroundColor = UIColor(patternImage: UIImage(named: "Under")!)
        case 18.6...24.9:
            statusTeext.text = "Normal"
            backGroundColor.backgroundColor = UIColor(patternImage: UIImage(named: "Normal")!)
        case 25...29.9:
            statusTeext.text = "Overweight"
            backGroundColor.backgroundColor = UIColor(patternImage: UIImage(named: "Over")!)
        default:
            statusTeext.text = "Fatness"
            backGroundColor.backgroundColor = UIColor(patternImage: UIImage(named: "Fatness")!)
        }
        
        
        
    }
    
    @IBAction func reset(_ sender: Any) {
        heightText.text = ""
        weightText.text = ""
        resultText.text = "0"
        statusTeext.text = "Status"
    }
    
    
    
    
}

