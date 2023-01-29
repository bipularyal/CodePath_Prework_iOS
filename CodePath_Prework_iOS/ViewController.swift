//
//  ViewController.swift
//  CodePath_Prework_iOS
//
//  Created by Bipul Aryal on 1/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var collegeYearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var noOfPetsStepper: UIStepper!
    @IBOutlet weak var introduceSelfButton: UIButton!
    @IBOutlet weak var noOfPetsLabel: UILabel!
    @IBOutlet weak var wantMorePetsSwitch: UISwitch!
    
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let year = collegeYearSegmentedControl.titleForSegment(at: collegeYearSegmentedControl.selectedSegmentIndex)
            
            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
            let introduction = " Hi! My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(noOfPetsLabel.text!) dogs. It is \(wantMorePetsSwitch.isOn) that I want more pets."
        // Creates the alert where we pass in our message, which our introduction.
               let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               // A way to dismiss the box once it pops up
               let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
               // Passing this action to the alert controller so it can be dismissed
               alertController.addAction(action)
               
               present(alertController, animated: true, completion: nil)
        }
    @IBOutlet weak var introduceSelfDidTapped: UIButton!
    
    
    @IBAction func stepperDidchange(_ sender: UIStepper) {
        noOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

