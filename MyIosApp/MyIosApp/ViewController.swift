//
//  ViewController.swift
//  MyIosApp
//
//  Created by Abhishek Sharma on 18/12/18.
//  Copyright © 2018 Abhishek Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {


    
    @IBOutlet weak var showage: UILabel!
    @IBOutlet weak var birthage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        
    }
    @IBAction func findage(_ sender: Any) {
        getAge()
    }
    func getAge(){
        let birth_year = Int(birthage.text!);
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date);
        let time = calendar.component(.month, from: date);
        let person_age = year - birth_year! ;
        showage.text = "Your Age is \(person_age) year"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // for anything touches on the screen the keyboard show disapper
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        getAge()
        self.view.endEditing(true)
        return true
    }
}
