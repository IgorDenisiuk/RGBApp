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
            sliderR.maximumValue = 255/255
            sliderR.minimumValue = 0
            sliderR.value = 0
            sliderR.thumbTintColor = .red
        }
    }
    @IBOutlet var sliderG: UISlider! {
        didSet {
            sliderG.maximumValue = 255/255
            sliderG.minimumValue = 0
            sliderG.value = 0
            sliderG.thumbTintColor = .green
        }
    }
    @IBOutlet var sliderB: UISlider! {
        didSet {
            sliderB.maximumValue = 255/255
            sliderB.minimumValue = 0
            sliderB.value = 0
            sliderB.thumbTintColor = .blue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        colorView.backgroundColor = UIColor(red: CGFloat(sliderR.value), green: CGFloat(sliderG.value), blue: CGFloat(sliderB.value), alpha: 1.0)
    }
    
    
    
    
    
    
    
    
    
}

