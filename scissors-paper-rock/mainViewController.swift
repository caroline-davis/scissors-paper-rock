//
//  mainViewController.swift
//  scissors-paper-rock
//
//  Created by Caroline Davis on 15/07/2016.
//  Copyright © 2016 Caroline Davis. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var rock: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed() {
        enum roshamboMove {
            case Scissors, Paper, Rock
        }
        //arc4random junk
        
        let myMove: roshamboMove.Paper
        let yourMove: Int
        var resultsMsg: ""
        switch(myMove, yourMove){
        case (.Rock, .Paper), (.Paper, .Rock):
            resultsMsg = "Paper Wins"
        
            
        }
    }


}

