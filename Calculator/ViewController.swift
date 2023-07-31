//
//  ViewController.swift
//  Calculator
//
//  Created by Murat on 27.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var myButtons = [buttons]()
    var calculatorResult = UILabel()
    var calculatorWokings = UILabel()
    var onceString : String = ""
    var opString : String = ""
    var twiceString  : String = ""
    var workings : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = view.frame.size.height

        
        calculatorResult.frame = CGRect(x: 0, y: 225, width: width, height: height*0.15)
        calculatorResult.text = "0"
        calculatorResult.textColor = .darkGray
        calculatorResult.textAlignment = .right
        calculatorResult.font = calculatorResult.font.withSize(45)
        view.addSubview(calculatorResult)
        
        calculatorWokings.frame = CGRect(x: 0, y: 50, width: width, height: height*0.25)
        calculatorWokings.text = "0"
        calculatorWokings.textColor = .darkGray
        calculatorWokings.textAlignment = .right
        calculatorWokings.font = calculatorWokings.font.withSize(65)
        view.addSubview(calculatorWokings)
        
        //Set1
        let button1 = buttons( button: UIButton(), title: "AC", color: .black, backColor: .darkGray,Uheight: 0, Ux: 0, Ucases: ._1)
        myButtons.append(button1)
        let button2 = buttons( button: UIButton(), title: "⌫", color: .black, backColor: .darkGray, Uheight: 0, Ux: 0.25, Ucases: ._2)
        myButtons.append(button2)
        let button3 = buttons( button: UIButton(), title: "%", color: .black, backColor: .darkGray, Uheight: 0, Ux: 0.50, Ucases: ._3)
        myButtons.append(button3)
        let button4 = buttons(button: UIButton(), title: "÷", color: .white, backColor: .orange, Uheight: 0, Ux: 0.75, Ucases: ._4)
        myButtons.append(button4)
        //Set2
        let button5 = buttons( button: UIButton(), title: "7", color: .white, backColor: .lightGray, Uheight: 75, Ux:0 , Ucases: ._5)
        myButtons.append(button5)
        let button6 = buttons( button: UIButton(), title: "8", color: .white, backColor: .lightGray, Uheight: 75, Ux: 0.25, Ucases: ._6)
        myButtons.append(button6)
        let button7 = buttons(button: UIButton(), title: "9", color: .white, backColor: .lightGray, Uheight: 75, Ux: 0.50, Ucases: ._7)
        myButtons.append(button7)
        let button8 = buttons( button: UIButton(), title: "x", color: .white, backColor: .orange, Uheight: 75, Ux: 0.75, Ucases: ._8)
        myButtons.append(button8)
        //Set3
        let button9 = buttons( button: UIButton(), title: "4", color: .white, backColor: .lightGray, Uheight: 150, Ux: 0, Ucases: ._9)
        myButtons.append(button9)
        let button10 = buttons(button: UIButton(), title: "5", color: .white, backColor: .lightGray, Uheight: 150, Ux: 0.25, Ucases: ._10)
        myButtons.append(button10)
        let button11 = buttons( button: UIButton(), title: "6", color: .white, backColor: .lightGray, Uheight: 150, Ux: 0.5, Ucases: ._11)
        myButtons.append(button11)
        let button12 = buttons( button: UIButton(), title: "-", color: .white, backColor: .orange, Uheight: 150, Ux: 0.75, Ucases: ._12)
        myButtons.append(button12)
        //Set4
        let button13 = buttons( button: UIButton(), title: "1", color: .white, backColor: .lightGray, Uheight: 225, Ux: 0, Ucases: ._13)
        myButtons.append(button13)
        let button14 = buttons(button: UIButton(), title: "2", color: .white, backColor: .lightGray, Uheight: 225, Ux: 0.25, Ucases: ._14)
        myButtons.append(button14)
        let button15 = buttons( button: UIButton(), title: "3", color: .white, backColor: .lightGray, Uheight: 225, Ux: 0.5, Ucases: ._15)
        myButtons.append(button15)
        let button16 = buttons( button: UIButton(), title: "+", color: .white, backColor: .orange, Uheight: 225, Ux: 0.75, Ucases: ._16)
        myButtons.append(button16)
        //Set5
        
        
        let button17 = buttons(button: UIButton(), title: "0", color: .white, backColor: .lightGray, Uheight: 0, Ux: 0, Ucases: ._17)
        button17.button.frame = CGRect(x: Int(Float(width)*0) + 20, y: Int(height*0.44) + 300, width:160, height: 70)
        button17.button.setTitle("0", for: UIControl.State.normal)
        button17.button.setTitleColor(.white, for: UIControl.State.normal)
        button17.button.backgroundColor = .lightGray
        button17.button.layer.cornerRadius = 0.15 * button17.button.bounds.size.width
        view.addSubview(button17.button)
        
        
        
        
        
        let button18 = buttons( button: UIButton(), title: ".", color: .white, backColor: .lightGray, Uheight: 300, Ux: 0.5, Ucases: ._18)
        myButtons.append(button18)
        let button19 = buttons( button: UIButton(), title: "=", color: .white, backColor: .orange, Uheight: 300, Ux: 0.75, Ucases: ._19)
        myButtons.append(button19)
        
        
        //Functions
        
        for rButton in myButtons {
            
            let button : UIButton = addButton( button: rButton.button, title: rButton.title, color: rButton.color, backColor: rButton.backColor, Ux: rButton.Ux, Uheight: rButton.Uheight)
            view.addSubview(button)
            
        }
        myButtons.append(button17)
        
        for rButton in myButtons {
            
            addTargetToButton(SButton: rButton)
            
        }
  
        
    }
        
        //make buttons
    func addButton(button : UIButton,title : String,color : UIColor,backColor : UIColor,Ux : Float,Uheight : Int) -> UIButton {
            
        let width = view.frame.size.width
        let height = view.frame.size.height
            
        button.frame =  CGRect(x: Int(Float(width)*Ux) + 20, y: Int(height*0.44) + Uheight, width:70, height: 70)
        button.setTitle(title, for: UIControl.State.normal)
        button.setTitleColor(color, for: UIControl.State.normal)
        button.backgroundColor = backColor
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
            
        return button }
        
    func addTargetToButton(SButton : buttons) {
        
        let buttonCase = SButton.Ucases
        
        switch buttonCase {
        
        case ._1:
            SButton.button.addTarget(self, action: #selector(Clear), for: UIControl.Event.touchUpInside)
        case ._2:
            SButton.button.addTarget(self, action: #selector(BackTap), for: UIControl.Event.touchUpInside)
        case ._3:
            SButton.button.addTarget(self, action: #selector(Percent), for: UIControl.Event.touchUpInside)
        case ._4:
            SButton.button.addTarget(self, action: #selector(Divide), for: UIControl.Event.touchUpInside)
        case ._5:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._6:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._7:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._8:
            SButton.button.addTarget(self, action: #selector(Mult), for: UIControl.Event.touchUpInside)
        case ._9:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._10:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._11:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._12:
            SButton.button.addTarget(self, action: #selector(Subt), for: UIControl.Event.touchUpInside)
        case ._13:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._14:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._15:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._16:
            SButton.button.addTarget(self, action: #selector(Add), for: UIControl.Event.touchUpInside)
        case ._17:
            SButton.button.addTarget(self, action: #selector(numbers(sender:)), for: UIControl.Event.touchUpInside)
        case ._18:
            SButton.button.addTarget(self, action: #selector(Comma), for: UIControl.Event.touchUpInside)
        case ._19:
            SButton.button.addTarget(self, action: #selector(EqualTabs), for: UIControl.Event.touchUpInside)
        
        }
        
        
        
    }
    
    func addWorkings(value : String) {
        if (opString.isEmpty && (Int(value) != nil || value == "." )) {
            if (!onceString.contains(".") || value != "."){
                onceString = onceString + value
                workings = onceString
                calculatorWokings.text = onceString
            } else {
                alertMessage(gTitle: "Invalid Input", gMessage:"Calculator can't do math based on input" )
            }
            
        } else if (Int(value) == nil && value != ".") {
            opString = value
            workings = onceString + opString
            calculatorWokings.text = onceString + opString
            if (value == "%") {
                
                EqualTabs()
            }
        } else if (!opString.isEmpty && (Int(value) != nil ||  value == ".")) {
            if(!twiceString.contains(".") || value != ".") {
                twiceString = twiceString + value
                workings = onceString + opString + twiceString
                calculatorWokings.text = onceString + opString + twiceString
            } else {
                alertMessage(gTitle: "Invalid Input", gMessage:"Calculator can't do math based on input" )
            }
            
        }
        
    }
    
    func resultFormat(result : Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            
            return String(format: "%.0f", result)
            
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    
    @objc func EqualTabs() {

        calculatorWokings.text = workings
        if (!workings.isEmpty){
            if twiceString != "" {
                workings = ""
                workings = workings + String(Double(onceString)!) + opString + String(Double(twiceString)!)
                let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
                let expression : NSExpression = NSExpression.init(format: checkedWorkingsForPercent)
                let result = expression.expressionValue(with:nil, context: nil) as! Double
                let stringResult = resultFormat(result: result)
                onceString = stringResult
                opString = ""
                twiceString = ""
                workings = ""
                calculatorResult.text = stringResult
            } else {
                workings = ""
                workings = workings + String(Double(onceString)!) + opString
                let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
                let expression : NSExpression = NSExpression.init(format: checkedWorkingsForPercent)
                let result = expression.expressionValue(with:nil, context: nil) as! Double
                let stringResult = resultFormat(result: result)
                onceString = stringResult
                opString = ""
                twiceString = ""
                workings = ""
                calculatorResult.text = stringResult
            }
        } else {
            alertMessage(gTitle: "Invalid Input", gMessage:"Calculator can't do math based on input" )
        }
       
        
    }


        
    @objc func Clear() {
        onceString = ""
        opString = ""
        twiceString = ""
        workings = ""
        calculatorResult.text = "0"
        calculatorWokings.text = "0"
        
    }
    @objc func BackTap() {
        
        if(workings.isEmpty != true) {
            workings.removeLast()
            calculatorWokings.text = workings
            if (!twiceString.isEmpty){
                twiceString.removeLast()
            } else if (!opString.isEmpty) {
                opString.removeLast()
            } else if (!onceString.isEmpty) {
                onceString.removeLast()
            }
        }
        
    }
    
    
    
    @objc func Percent(){

        addWorkings(value: "%")
    
    }
    
    
    @objc func numbers(sender : UIButton) {
        addWorkings(value:(sender.titleLabel?.text)!)
    }
    @objc func Mult() {
        if (opString.isEmpty){
            addWorkings(value: "*")
        } else {
            alertMessage(gTitle: "Invalid Input", gMessage:"Calculator can't do math based on input" )
        }
        
    }
    @objc func Divide() {
        if (opString.isEmpty){
            addWorkings(value: "/")
        } else {
            alertMessage(gTitle: "Invalid Input", gMessage:"Calculator can't do math based on input" )
        }
       
    }
    @objc func Subt() {
        if (opString.isEmpty){
            addWorkings(value: "-")
        } else {
            alertMessage(gTitle: "Invalid Input", gMessage:"Calculator can't do math based on input" )
        }
        
    }
    @objc func Add() {
        if (opString.isEmpty){
            addWorkings(value: "+")
        } else {
            alertMessage(gTitle: "Invalid Input", gMessage:"Calculator can't do math based on input" )
        }
        
    }
    @objc func Comma() {
        addWorkings(value: ".")
    }
    
    func alertMessage(gTitle : String,gMessage : String){
        
        let alertMessage = UIAlertController(title: gTitle, message: gMessage, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        alertMessage.addAction(okButton)
        self.present(alertMessage, animated: true , completion: nil)
        
    }
        
    }
    
    

