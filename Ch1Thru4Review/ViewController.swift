//
//  ViewController.swift
//  Ch1Thru4Review
//
//  Created by Kathryn Riley on 2/8/16.
//  Copyright © 2016 ___KathrynRiley___. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate {

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
        myNameTextField.resignFirstResponder()
        myNumberTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySwitch.on = false
        mySlider.value = 0.0
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func doSegementedChangeBackground(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            view.backgroundColor = UIColor.whiteColor()
        case 1:
            view.backgroundColor = UIColor.redColor()
        case 2:
            view.backgroundColor = UIColor.greenColor()
        default:
            return
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doShowInAlertView(sender: AnyObject) {
        
        let msg = myNameTextField.text! + "\n" + myNumberTextField.text!
        let alert = UIAlertView(title: "LOOK", message: msg, delegate: nil, cancelButtonTitle: "OK")
        
        alert.show()
        
    }

    @IBAction func doMySwitch(sender: AnyObject) {
        if mySwitch.on {
            print("Switch ON")
            NSLog("Switch ON")
        }
        else {
            print("Switch OFF")
            NSLog("Switch OFF")
        }
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        print("Button Index: " + String(buttonIndex))
        
        if buttonIndex == 0{
            count = 0
            updateCountLabel()
            //I added this part because I'm a tad OCD and it was driving me 
            //crazy that the slider didn't reset also
            mySlider.value = 0.0
        }
    }
    
    @IBAction func doClearCount(sender: AnyObject) {
        let action = UIActionSheet(title: "Confirm Clearing Count", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Clear Count")
        
        action.showInView(view)
    }
    
    @IBAction func doSlider(sender: AnyObject) {
        count = Int(mySlider.value)
        updateCountLabel()
    }

}

