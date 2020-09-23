//
//  ViewController.swift
//  concentration
//
//  Created by Abhishek Sharma on 14/01/19.
//  Copyright © 2019 Abhishek Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips : \(flipCount)";
        }
    }
    @IBOutlet var cardbuttons: [UIButton]!
    
    @IBOutlet weak var flipCountLabel: UILabel!
    var emojiChoices = ["👻","🎃","👻","🎃"];
    @IBAction func touchcard(_ sender: UIButton) {
        flipCount += 1;
        if let cardNumbers = cardbuttons.index(of: sender){
             flipCard(withEmoji: emojiChoices[cardNumbers], on: sender)
            //print("CardNumbers= \(cardNumbers)");
        }
        else{
            print("Not selected buttons");
        }
    }
    func flipCard(withEmoji emoji:String,on button:UIButton){
        print("FlipCard(withEmoji: \(emoji)");
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal);
            button.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.6018981009, blue: 0.1414714757, alpha: 1);
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal);
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        }
    }
    
}

