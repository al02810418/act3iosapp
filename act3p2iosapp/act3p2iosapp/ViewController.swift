//
//  ViewController.swift
//  act3p2iosapp
//
//  Created by Adrian Rivera on 08/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        let redValue = CGFloat(sender.value)
        redLabel.text = "R: \(Int(redValue * 255))"
        updateBackgroundColor()
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        let greenValue = CGFloat(sender.value)
        greenLabel.text = "G: \(Int(greenValue * 255))"
        updateBackgroundColor()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        let blueValue = CGFloat(sender.value)
        blueLabel.text = "B: \(Int(blueValue * 255))"
        updateBackgroundColor()
    }
    
    @IBAction func alphaSliderChanged(_ sender: UISlider) {
        let alphaValue = CGFloat(sender.value)
        alphaLabel.text = "A: \(String(format: "%.2f", alphaValue))"
        updateBackgroundColor()
    }
    
    func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let alpha = CGFloat(alphaSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        view.backgroundColor = color
    }
}
