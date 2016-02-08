//
//  ViewController.swift
//  Ch1Thru4Review
//
//  Created by Kathryn Riley on 2/8/16.
//  Copyright © 2016 ___KathrynRiley___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet weak var myCountLabel: UILabel!
    @IBOutlet weak var mySegmentedControlCountIncrement: UISegmentedControl!
    @IBOutlet weak var myNameTextField: UITextField!
    @IBOutlet weak var myNumberTextField: UITextField!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var mySlider: UISlider!
    
    @IBAction func doIncremetCount(sender: AnyObject) {
        
        switch mySegmentedControlCountIncrement.selectedSegmentIndex{
        case 0:
            count++
        case 1:
            count += 2
        case 2:
            count += 3
        default:
            return
        }
        
        updateCountLabel()
    }
    
    func updateCountLabel(){
        myCountLabel.text = "Count = " + String(count)
    }
    
    @IBAction func doTapGesture(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySwitch.on = false
        mySlider.value = 0.0
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func doSegementedChangeBackground(sender: AnyObject) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doShowInAlertView(sender: AnyObject) {
    }

    @IBAction func doMySwitch(sender: AnyObject) {
        
    }
    
    @IBAction func doClearCount(sender: AnyObject) {
        
    }
    
    @IBAction func doSlider(sender: AnyObject) {
        
    }

}

