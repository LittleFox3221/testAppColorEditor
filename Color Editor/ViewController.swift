//
//  ViewController.swift
//  Color Editor
//
//  Created by Сергей Оськин on 04.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redColorViewValue: UILabel!
    @IBOutlet var greenColorViewValue: UILabel!
    @IBOutlet var blueColorViewValue: UILabel!
    @IBOutlet var alphaColorView: UILabel!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//MARK: - ColorView
        colorView.layer.cornerRadius = 12
        

// MARK: - Text ColorValue
        
        redColorViewValue.text = "0"
        greenColorViewValue.text = "0"
        blueColorViewValue.text = "0"
        alphaColorView.text = "0.0"
        

// MARK: - Settings Slider
        
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        redSlider.maximumTrackTintColor = .black
        
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        greenSlider.maximumTrackTintColor = .black
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        blueSlider.maximumTrackTintColor = .black
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        alphaSlider.value = 0
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 1.0
        
        alphaSlider.minimumTrackTintColor = .purple
        alphaSlider.maximumTrackTintColor = .black
        alphaSlider.thumbTintColor = .purple
        
    }
    
    @IBAction func actionSliderChangeColorView() {
        
        redColorViewValue.text = String(Int(redSlider.value))
        greenColorViewValue.text = String(Int(greenSlider.value))
        blueColorViewValue.text = String(Int(blueSlider.value))
        alphaColorView.text = String(format: "%.1f", alphaSlider.value)
        
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(alphaSlider.value))
    }
    

    
}

