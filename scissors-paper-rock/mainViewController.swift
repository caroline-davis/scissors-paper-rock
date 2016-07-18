//
//  mainViewController.swift
//  scissors-paper-rock
//
//  Created by Caroline Davis on 15/07/2016.
//  Copyright © 2016 Caroline Davis. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "results" {
            let vc = segue.destinationViewController as! secondViewController
            vc.userChoice = sender as! UIButton
        }
    }
   
    @IBAction func results(sender: UIButton) {
        performSegueWithIdentifier("results", sender: sender)
        
    }
    

}

