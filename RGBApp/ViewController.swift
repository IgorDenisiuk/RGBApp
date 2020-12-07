//
//  ViewController.swift
//  RGBApp
//
//  Created by Igor Denisiuk on 12/4/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var redNumbers: UILabel!
    @IBOutlet var greenNumbers: UILabel!
    @IBOutlet var blueNumbers: UILabel!
    @IBOutlet var sliderR: UISlider! {
        didSet {
            sliderR.value = 0
            sliderR.thumbTintColor = .red
        }
    }
    @IBOutlet var sliderG: UISlider! {
        didSet {
            sliderG.value = 0
            sliderG.thumbTintColor = .green
        }
    }
    @IBOutlet var sliderB: UISlider! {
        didSet {
            sliderB.value = 0
            sliderB.thumbTintColor = .blue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        colorView.backgroundColor = .black
        // Do any additional setup after loading the view.
    }

    @IBAction func redSliderAction(_ sender: UISlider) {
        let numberChange = Int(sender.value)
        redNumbers.text = "\(numberChange)"
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        let numberChange = Int(sender.value)
        greenNumbers.text = "\(numberChange)"
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        let numberChange = Int(sender.value)
        blueNumbers.text = "\(numberChange)"
    }
    
    @IBAction func colorChange(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(red: CGFloat(sliderR.value) / 255, green: CGFloat(sliderG.value) / 255, blue: CGFloat(sliderB.value) / 255, alpha: 1.0)
        
    }
    
    
    
    
    
    
    
    
    
}

