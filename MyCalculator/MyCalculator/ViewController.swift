//
//  ViewController.swift
//  MyCalculator
//
//  Created by Abhishek Sharma on 19/12/18.
//  Copyright © 2018 Abhishek Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var shownumber: UILabel!
    var newOperation = true;
    func addshow(number:String){
        var show = String(shownumber.text!)
        if newOperation{
            show = "";
            newOperation = false;
        }
        show = show + number;
        shownumber.text = show;
        
    }
    
    @IBAction func bndot(_ sender: Any) {
        addshow(number:".")
    }
    
    @IBAction func bn0(_ sender: Any) {
        addshow(number:"0")
    }
    @IBAction func bn1(_ sender: Any) {
        addshow(number:"1")
    }
    @IBAction func bn2(_ sender: Any) {
        addshow(number:"2")
    }
    @IBAction func bn3(_ sender: Any) {
        addshow(number:"3")
    }
    @IBAction func bn4(_ sender: Any) {
        addshow(number:"4")
    }
    @IBAction func bn5(_ sender: Any) {
        addshow(number:"5")
    }
    @IBAction func bn6(_ sender: Any) {
        addshow(number:"6")
    }
    @IBAction func bn7(_ sender: Any) {
        addshow(number:"7")
    }
    @IBAction func bn8(_ sender: Any) {
        addshow(number:"8")
    }
    @IBAction func bn9(_ sender: Any) {
        addshow(number:"9")
    }
    var op = "+";
    var number1:Double?
    
    @IBAction func bulmul(_ sender: Any) {
      op = "*"
      number1 = Double( shownumber.text!)
      newOperation = true
}
    
    @IBAction func bulmin(_ sender: Any) {
        op = "-";
        number1 = Double(shownumber.text!)
        newOperation = true
    }
    
    @IBAction func bulplus(_ sender: Any) {
        op = "+";
        number1 = Double(shownumber.text!)
        newOperation = true;
    }
    
    @IBAction func buldel(_ sender: Any) {
        shownumber.text = "0";
        newOperation = true;
    }
    
    @IBAction func bulpn(_ sender: Any) {
        var show = String(shownumber.text!)
        
        show = "-" + show ;
        shownumber.text = show;
    }
    @IBAction func bulper(_ sender: Any) {
        op = "%";
        number1 = Double(shownumber.text!)
        newOperation = true;
    }
    
    
    @IBAction func bulequal(_ sender: Any) {
        let number2 = Double(shownumber.text!)
        var results:Double?
        switch op {
        case "*":
            results = number1! * number2!;
        case "-":
            results = number1! - number2!;
        case "+":
            results = number1! + number2!;
        case "%":
            results = Double(number1!)*number2!/100;
        default: break
            
        }
        shownumber.text = String(results!);
        newOperation = true;
    }
}
