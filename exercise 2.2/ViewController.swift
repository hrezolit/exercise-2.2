//
//  ViewController.swift
//  exercise 2.2
//
//  Created by Nikita on 17.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    var currentLight: Light = .yellow
    var lightOn: CGFloat = 1
    var lightOff: CGFloat = 0.3
    
    @IBOutlet var redImageView: UIImageView!
    @IBOutlet var yellowImageView: UIImageView!
    @IBOutlet var greenImageView: UIImageView!
    @IBOutlet var startButton: UIButton!
    
    enum Light {
        case red
        case yellow
        case green
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        redImageView.alpha = lightOff
        yellowImageView.alpha = lightOff
        greenImageView.alpha = lightOff

        redImageView.layer.cornerRadius = 50
        yellowImageView.layer.cornerRadius = 50
        greenImageView.layer.cornerRadius = 50
        
        
    }

    @IBAction func onOffAction() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redImageView.alpha = lightOn
            yellowImageView.alpha = lightOff
            greenImageView.alpha = lightOff
        case .yellow:
            currentLight = .green
            redImageView.alpha = lightOff
            yellowImageView.alpha = lightOn
            greenImageView.alpha = lightOff
        case.green:
            currentLight = .red
            redImageView.alpha = lightOff
            yellowImageView.alpha = lightOff
            greenImageView.alpha = lightOn
            
        }
    }
}

