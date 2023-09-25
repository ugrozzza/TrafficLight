//
//  ViewController.swift
//  TrafficLight
//
//  Created by Vladislav on 25.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redColorLight: UIView!
    @IBOutlet weak var yellowColorLight: UIView!
    @IBOutlet weak var greenColorLight: UIView!
    
    @IBOutlet weak var turnButton: UIButton!
    
    override func viewDidLoad() {
        redColorLight.layer.cornerRadius = 100
        yellowColorLight.layer.cornerRadius = 100
        greenColorLight.layer.cornerRadius = 100
        
        redColorLight.alpha = 0.5
        yellowColorLight.alpha = 0.5
        greenColorLight.alpha = 0.5
        
        turnButton.layer.cornerRadius = 10
        super.viewDidLoad()
    }
    
    @IBAction func activationButton() {
        if redColorLight.alpha == 0.5 && yellowColorLight.alpha == 0.5 && greenColorLight.alpha == 0.5  { //clear
            redColorLight.alpha = 1    // red
        } else if redColorLight.alpha == 1 { //red
            redColorLight.alpha = 0.5 // clear
            yellowColorLight.alpha = 1 // yellow
        } else if yellowColorLight.alpha == 1 { //yellow
            yellowColorLight.alpha = 0.5  //clear
            greenColorLight.alpha = 1  //green
        } else if greenColorLight.alpha == 1 {
            greenColorLight.alpha = 0.5
        }
    }
}

