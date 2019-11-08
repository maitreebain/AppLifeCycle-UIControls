//
//  ControlsViewController.swift
//  AppLifeCycle-UIControls
//
//  Created by Maitree Bain on 11/8/19.
//  Copyright © 2019 Maitree Bain. All rights reserved.
//

import UIKit

class ControlsViewController: UIViewController {
//MARK: - Outlets and Properties
    @IBOutlet weak var switchControl: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    
    @IBOutlet weak var stepperControl: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var sliderControl: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var switchValue: Bool = true {
        //property observer - observes changes on a property, willSet, didSet
        didSet  {
            //update switch label
            switchLabel.text = "This switch is \(switchControl.isOn ? "on" : "off" )"
            
        }
    }
    
    var cohort: Double = 6.0 {
        didSet {
            stepperLabel.text = "Looking at \(stepperControl.value) Cohort"
        }
    }
    
    var currentSegmentIndex: Int = 0 {
        didSet {
            switch segmentedControl.selectedSegmentIndex {
            case 0:
                imageView.image = #imageLiteral(resourceName: "cat")
            case 1:
                imageView.image = #imageLiteral(resourceName: "dog")
            default:
                imageView.image = #imageLiteral(resourceName: "pursuit")
            }
        }
    }
    
    var currentYear: Float = 2012 {
        didSet {
            sliderLabel.text = String(format: "%0.f", sliderControl.value)
        }
    }
    
    //MARK: - View Controller Life Cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    func configureStepper() {
        stepperControl.minimumValue = 1.0
        stepperControl.maximumValue = 7.0
        stepperControl.stepValue = 1.0
        //default start value
        stepperControl.value = 6.0
    }

    func configureSlider() {
        sliderControl.minimumValue = 1978
        sliderControl.maximumValue = 2019
        sliderControl.value = 2012
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("cvc - viewWillAppear")
        
        configureStepper()
        configureSlider()
    }

    //MARK:- Actions and Methods
    
    
    @IBAction func switchToggle(_ sender: UISwitch) {
        switchValue = sender.isOn //true or false- type Bool
        
    }
    
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        cohort = sender.value //of type Double
    
    }
    
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex // values 0, 1
        
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        currentYear = sender.value //float type
    }
    
}
