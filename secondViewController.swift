//
//  secondViewController.swift
//  scissors-paper-rock
//
//  Created by Caroline Davis on 15/07/2016.
//  Copyright © 2016 Caroline Davis. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet private weak var results: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonPressed()
    }
    
    
    var userChoice: UIButton!

    func buttonPressed() {
        enum roshamboMove: Int {
            case Scissors = 0, Paper, Rock
        }
        let randomNumber = Int(arc4random_uniform(2))
        let compMove = roshamboMove(rawValue: randomNumber)
        let userMove = roshamboMove(rawValue: userChoice.tag)
        var resultsMsg: String = ""
        
        // comparing the user and comps picks to give result
        switch (userMove!, compMove!) {
        case let (user, comp) where user == comp:
            resultsMsg = "We Tied"
        case (.Scissors, .Paper), (.Paper, .Rock), (.Rock, .Scissors):
            resultsMsg = "You Win!!"
        default:
            resultsMsg = "You Lose!!"
        }
        results.text = resultsMsg
        print (resultsMsg)
        print("user move \(userMove)")
        print("comp move \(compMove)")
    }
    
    // Goes back to the main page to play game again
    @IBAction private func playAgain() {
        dismissViewControllerAnimated(true, completion: nil)
    }

}