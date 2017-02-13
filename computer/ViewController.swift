//
//  ViewController.swift
//  computer
//
//  Created by cjnora on 2017/2/11.
//  Copyright © 2017年 fortest. All rights reserved.
//

import UIKit
enum Sign {
    case nothing
    case plus
    case minus
    case multi
    case division
}
class ViewController: UIViewController {
    
    let formatter = NumberFormatter()
    
    var firstNumber: Double = 0.0
    var secondNumber: Double = 0.0
    var finalNumber: Double = 0.0
    var currentSign = Sign.nothing
    @IBOutlet var resultBar: UILabel!
    @IBAction func number1(_ sender: Any) {
        resultBar.text! += "1"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number2(_ sender: Any) {
        resultBar.text! += "2"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number3(_ sender: Any) {
        resultBar.text! += "3"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number4(_ sender: Any) {
        resultBar.text! += "4"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number5(_ sender: Any) {
        resultBar.text! += "5"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number6(_ sender: Any) {
        resultBar.text! += "6"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number7(_ sender: Any) {
        resultBar.text! += "7"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number8(_ sender: Any) {
        resultBar.text! += "8"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number9(_ sender: Any) {
        resultBar.text! += "9"
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
    }
    @IBAction func number0(_ sender: Any) {
        resultBar.text! += "0"
        if !(resultBar.text!.contains(".")){
            resultBar.text! = checkNumber(LabelText: resultBar.text!)
        }
    }
    @IBAction func point(_ sender: Any) {
        if !(resultBar.text!.contains(".")){
        resultBar.text! += "."
        }
    }
    @IBAction func plus(_ sender: Any) {
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
        firstNumber = Double(resultBar.text!)!
        resultBar.text! = "0"
        currentSign = Sign.plus
    }
    @IBAction func minus(_ sender: Any) {
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
        firstNumber = Double(resultBar.text!)!
        resultBar.text! = "0"
        currentSign = Sign.minus
    }
    @IBAction func multi(_ sender: Any) {
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
        firstNumber = Double(resultBar.text!)!
        resultBar.text! = "0"
        currentSign = Sign.multi
    }
    @IBAction func division(_ sender: Any) {
        resultBar.text! = checkNumber(LabelText: resultBar.text!)
        firstNumber = Double(resultBar.text!)!
        resultBar.text! = "0"
        currentSign = Sign.division
    }
    @IBAction func AC(_ sender: Any) {
        firstNumber = 0
        secondNumber = 0
        resultBar.text! = "0"
        currentSign = Sign.nothing
    }
    @IBAction func equal(_ sender: Any) {
        switch currentSign {
        case .plus:
            secondNumber = Double(resultBar.text!)!
            finalNumber = firstNumber + secondNumber
            resultBar.text! = checkNumber(LabelText: String(finalNumber))
            currentSign = Sign.nothing
        case .minus:
            secondNumber = Double(resultBar.text!)!
            finalNumber = firstNumber - secondNumber
            resultBar.text! = checkNumber(LabelText: String(finalNumber))
            currentSign = Sign.nothing
        case .multi:
            secondNumber = Double(resultBar.text!)!
            finalNumber = firstNumber * secondNumber
            resultBar.text! = checkNumber(LabelText: String(finalNumber))
            currentSign = Sign.nothing
        case .division:
            secondNumber = Double(resultBar.text!)!
            finalNumber = firstNumber / secondNumber
            resultBar.text! = checkNumber(LabelText: String(finalNumber))
            currentSign = Sign.nothing
        case .nothing:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatter.numberStyle = .decimal
        resultBar.text! = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func checkNumber(LabelText: String) -> String {
        var stringOfNumber: NSNumber
        
        stringOfNumber = formatter.number(from: LabelText)!
        
        return String(describing: stringOfNumber)
    }


}

