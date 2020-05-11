//
//  ViewController.swift
//  Calculator
//
//  Created by maya on 2020/05/11.
//  Copyright © 2020 maya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0  //どの四則演算を判定
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func select3() {
        number1 = number1 * 10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4() {
        number1 = number1 * 10 + 4
        label.text = String(number1)
    }
    
    @IBAction func plus() {
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func minus() {
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func mul() {
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func div() {
        number2 = number1
        number1 = 0
        ope = 4
    }
    
    @IBAction func equal() {
        if ope == 1 {
            number3 = number2 + number1
            // plus
        } else if ope == 2 {
            number3 = number2 - number1
            // minus
        } else if ope == 3 {
            number3 = number2 * number1
            // mul
        } else if ope == 4 {
            number3 = number2 / number1
            // div
        }
        label.text = String(number3)
    }


}

