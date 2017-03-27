//
//  ViewController.swift
//  sliderColor
//
//  Created by Robert Alavi on 3/26/17.
//  Copyright © 2017 udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeViewColor()
        self.redColorSlider.isContinuous = false
        self.greenColorSlider.isContinuous = false
        self.blueColorSlider.isContinuous = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeViewColor() {
        
         print("slider is moved")
        
        
         let r: CGFloat = CGFloat(self.redColorSlider.value)
         let g: CGFloat = CGFloat(self.greenColorSlider.value)
         let b: CGFloat = CGFloat(self.blueColorSlider.value)
        
        print("redColorSlider: \(redColorSlider.value) - CGFloat: \(r)")
        print("greenColorSlider: \(greenColorSlider.value) - CGFloat: \(g)")
        print("blueColorSlider: \(blueColorSlider.value) - CGFloat: \(b)")
        
         colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
 
    }
}

