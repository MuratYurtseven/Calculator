//
//  ViewController.swift
//  Calculator
//
//  Created by Murat on 27.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var myButtons = [buttons]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button1 = buttons(title: "AC", color: .black, backColor: .darkGray,Uheight: 0, Ux: 0, Ucases: .AC)
        myButtons.append(button1)
        let button2 = buttons(title: "+/-", color: .black, backColor: .darkGray, Uheight: 0, Ux: 0.25, Ucases: .PoM)
        myButtons.append(button2)
        let button3 = buttons(title: "%", color: .black, backColor: .darkGray, Uheight: 0, Ux: 0.50, Ucases: .percent)
        myButtons.append(button3)
        let button4 = buttons(title: "÷", color: .white, backColor: .orange, Uheight: 0, Ux: 0.75, Ucases: .divi)
        myButtons.append(button4)
        //Set2
        let button5 = buttons(title: "7", color: .white, backColor: .lightGray, Uheight: 75, Ux:0 , Ucases: .divi)
        myButtons.append(button5)
        let button6 = buttons(title: "8", color: .white, backColor: .lightGray, Uheight: 75, Ux: 0.25, Ucases: .divi)
        myButtons.append(button6)
        let button7 = buttons(title: "9", color: .white, backColor: .lightGray, Uheight: 75, Ux: 0.50, Ucases: .divi)
        myButtons.append(button7)
        let button8 = buttons(title: "x", color: .white, backColor: .orange, Uheight: 75, Ux: 0.75, Ucases: .divi)
        myButtons.append(button8)
        //Set3
        let button9 = buttons(title: "4", color: .white, backColor: .lightGray, Uheight: 150, Ux: 0, Ucases: .divi)
        myButtons.append(button9)
        let button10 = buttons(title: "5", color: .white, backColor: .lightGray, Uheight: 150, Ux: 0.25, Ucases: .divi)
        myButtons.append(button10)
        let button11 = buttons(title: "6", color: .white, backColor: .lightGray, Uheight: 150, Ux: 0.5, Ucases: .divi)
        myButtons.append(button11)
        let button12 = buttons(title: "-", color: .white, backColor: .orange, Uheight: 150, Ux: 0.75, Ucases: .divi)
        myButtons.append(button12)
        //Set4
        let button13 = buttons(title: "1", color: .white, backColor: .lightGray, Uheight: 225, Ux: 0, Ucases: .divi)
        myButtons.append(button13)
        let button14 = buttons(title: "2", color: .white, backColor: .lightGray, Uheight: 225, Ux: 0.25, Ucases: .divi)
        myButtons.append(button14)
        let button15 = buttons(title: "3", color: .white, backColor: .lightGray, Uheight: 225, Ux: 0.5, Ucases: .divi)
        myButtons.append(button15)
        let button16 = buttons(title: "+", color: .white, backColor: .orange, Uheight: 225, Ux: 0.75, Ucases: .divi)
        myButtons.append(button16)
        //Set5

        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let button17 = UIButton(frame: CGRect(x: Int(Float(width)*0) + 20, y: Int(height*0.5) + 300, width:160, height: 70))
        button17.setTitle("0", for: UIControl.State.normal)
        button17.setTitleColor(.white, for: UIControl.State.normal)
        button17.backgroundColor = .lightGray
        button17.layer.cornerRadius = 0.15 * button17.bounds.size.width
        view.addSubview(button17)
        let button18 = buttons(title: ",", color: .white, backColor: .lightGray, Uheight: 300, Ux: 0.5, Ucases: .divi)
        myButtons.append(button18)
        let button19 = buttons(title: "=", color: .white, backColor: .orange, Uheight: 300, Ux: 0.75, Ucases: .divi)
        myButtons.append(button19)
        

        for rButton in myButtons {
            
            view.addSubview(addButton(title: rButton.title, color: rButton.color, backColor: rButton.backColor, Ux: rButton.Ux, Uheight: rButton.Uheight))
        }
       
    }
    
    
    func addButton(title : String,color : UIColor,backColor : UIColor,Ux : Float,Uheight : Int) -> UIButton {
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let button = UIButton(frame: CGRect(x: Int(Float(width)*Ux) + 20, y: Int(height*0.5) + Uheight, width:70, height: 70))
        button.setTitle(title, for: UIControl.State.normal)
        button.setTitleColor(color, for: UIControl.State.normal)
        button.backgroundColor = backColor
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        return button
        
    }
    


}

