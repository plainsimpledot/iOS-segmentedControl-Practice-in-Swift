//
//  ViewController.swift
//  segmentedSwitch
//
//  Created by Rim21 on 5/12/2015.
//  Copyright © 2015 Nathan Rima. All rights reserved.
//

import UIKit

/*
This project at this time does not use any formatting or constraints.
Its purpose is to kick off some discussions over how the code works
*/

class ViewController: UIViewController {
    
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var blogBtn: UIButton!
    @IBOutlet weak var projectBtn: UIButton!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var metalBgd: UIImageView!
    @IBOutlet weak var segmentedBgd: UIImageView!
    @IBOutlet weak var displayContainer: UIImageView!
    
    @IBOutlet weak var greyIndicator: UIImageView!
    @IBOutlet weak var whiteIndicator: UIImageView!
    @IBOutlet weak var greenIndicator: UIImageView!
    @IBOutlet weak var redIndicator: UIImageView!
    
    
    /* 
    Below is the control logic using if/then statements to simulate a segmented UI control. This control logic approach feels like it could be better suited to a switch statement.
    In this project I use .hidden to present various states of the buttons and indicators. What are the other alternatives?
    I have associated three separate buttons to a single action and used an array to 'sort' through which User touch action was associated with which button.
    Interested to understand better 'sender' as when you read the code directly it is confusing.
    */
    
    @IBAction func segmentAction(sender: UIButton) {
        let buttons = [homeBtn,blogBtn,projectBtn]
        for button in buttons {
            if (button == sender) {
                if (sender.selected){
                    button.selected = false
                    greyIndicator.hidden = false
                    displayLabel.text = "No selection"
                    
                    if (sender == homeBtn) {
                        whiteIndicator.hidden = true
                    }
                    else if (sender == blogBtn) {
                        greenIndicator.hidden = true
                    }
                    else if (sender == projectBtn) {
                        redIndicator.hidden = true
                    }
                }
                else {
                    button.selected = true
                    greyIndicator.hidden = true
                    
                    if (sender == homeBtn) {
                        whiteIndicator.hidden = false
                        
                        greenIndicator.hidden = true
                        
                        redIndicator.hidden = true
                        
                        displayLabel.text = "Home"
                    }
                    else if (sender == blogBtn) {
                        whiteIndicator.hidden = true
                        
                        greenIndicator.hidden = false
                        
                        redIndicator.hidden = true
                        
                        displayLabel.text = "Blog"
                    }
                    else if (sender == projectBtn) {
                        whiteIndicator.hidden = true
                        
                        greenIndicator.hidden = true
                        
                        redIndicator.hidden = false
                        
                        displayLabel.text = "Project"
                    }
                }
            }
            else {
                button.selected = false
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

