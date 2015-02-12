//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Jonathan Navarro on 2/11/15.
//  Copyright (c) 2015 Jon Navarro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
//        let sizeFromTextField = mensShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt() //optional
//        var integerFromTextField = numberFromTextField! //unwrap optional
        
        // refactoring
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " In European Shoe Size"
        
//        integerFromTextField += conversionConstant
//        let stringWithUpdatedShowSize = "\(integerFromTextField)" // string interpolation
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShowSize
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 3.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " In European Shoe Size"
    }

}

