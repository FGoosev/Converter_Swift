//
//  ViewController.swift
//  Converter
//
//  Created by Александр Гусев on 25.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var centL: UILabel!
    @IBOutlet weak var metrL: UILabel!
    @IBOutlet weak var kiloL: UILabel!
    @IBOutlet weak var dumL: UILabel!
    @IBOutlet weak var futL: UILabel!
    @IBOutlet weak var miliL: UILabel!
    
    @IBOutlet weak var centTextLabel: UILabel!
    @IBOutlet weak var metrTextLabel: UILabel!
    @IBOutlet weak var kiloTextLabel: UILabel!
    @IBOutlet weak var dumTextLabel: UILabel!
    @IBOutlet weak var futTextLabel: UILabel!
    @IBOutlet weak var miliTextLabel: UILabel!
    
    @IBOutlet weak var cent: UIButton!
    @IBOutlet weak var dum: UIButton!
    @IBOutlet weak var kilo: UIButton!
    @IBOutlet weak var mili: UIButton!
    @IBOutlet weak var fut: UIButton!
    @IBOutlet weak var metr: UIButton!
    
    @IBOutlet weak var langLabel: UILabel!
    
    @IBAction func langBtn(_ sender: UIButton) {
        if langLabel.text == "English"{
            langLabel.text = "Русский"
            centTextLabel.text = "Сантиметры"
            metrTextLabel.text = "Метры"
            kiloTextLabel.text = "Километры"
            dumTextLabel.text = "Дюймы"
            futTextLabel.text = "Футы"
            miliTextLabel.text = "Мили"
            
            centL.text = "Сантиметры"
            metrL.text = "Метры"
            kiloL.text = "Километры"
            dumL.text = "Дюймы"
            futL.text = "Футы"
            miliL.text = "Мили"
        }else{
            langLabel.text = "English"
            centL.text = "Centimeters"
            metrL.text = "Meters"
            kiloL.text = "Kilometers"
            dumL.text = "Inches"
            futL.text = "Feet"
            miliL.text = "Miles"
            
            centTextLabel.text = "Centimeters"
            metrTextLabel.text = "Meters"
            kiloTextLabel.text = "Kilometers"
            dumTextLabel.text = "Inches"
            futTextLabel.text = "Feet"
            miliTextLabel.text = "Miles"
        }
    }
    
    @IBAction func centBtn(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            metr.isSelected = false
            kilo.isSelected = false
            fut.isSelected = false
            dum.isSelected = false
            mili.isSelected = false
        }else{
            sender.isSelected = true
            metr.isSelected = false
            kilo.isSelected = false
            fut.isSelected = false
            dum.isSelected = false
            mili.isSelected = false
            self.textFiled(text)
        }
    }
    
    @IBAction func metrbtn(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            cent.isSelected = false
            kilo.isSelected = false
            fut.isSelected = false
            dum.isSelected = false
            mili.isSelected = false
        }else{
            sender.isSelected = true
            cent.isSelected = false
            kilo.isSelected = false
            fut.isSelected = false
            dum.isSelected = false
            mili.isSelected = false
            self.textFiled(text)
        }
    }
    
    @IBAction func kiloBtn(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            metr.isSelected = false
            cent.isSelected = false
            dum.isSelected = false
            fut.isSelected = false
            mili.isSelected = false

        }else{
            sender.isSelected = true
            metr.isSelected = false
            cent.isSelected = false
            dum.isSelected = false
            fut.isSelected = false
            mili.isSelected = false
            self.textFiled(text)
        }
    }
    
    @IBAction func dumBtn(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            metr.isSelected = false
            kilo.isSelected = false
            cent.isSelected = false
            fut.isSelected = false
            mili.isSelected = false
        }else{
            sender.isSelected = true
            metr.isSelected = false
            kilo.isSelected = false
            cent.isSelected = false
            fut.isSelected = false
            mili.isSelected = false
            self.textFiled(text)
        }
    }
    
    @IBAction func futBtn(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            metr.isSelected = false
            kilo.isSelected = false
            dum.isSelected = false
            cent.isSelected = false
            mili.isSelected = false
        }else{
            sender.isSelected = true
            metr.isSelected = false
            kilo.isSelected = false
            dum.isSelected = false
            cent.isSelected = false
            mili.isSelected = false
            self.textFiled(text)
        }
    }
    
    @IBAction func miliBtn(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
            metr.isSelected = false
            kilo.isSelected = false
            fut.isSelected = false
            dum.isSelected = false
            cent.isSelected = false
        }else{
            sender.isSelected = true
            metr.isSelected = false
            kilo.isSelected = false
            fut.isSelected = false
            dum.isSelected = false
            cent.isSelected = false
            self.textFiled(text)
        }
    }
    
    
    
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var centLabel: UILabel!
    
    @IBOutlet weak var miliLabel: UILabel!
    @IBOutlet weak var futLabel: UILabel!
    @IBOutlet weak var dumLabel: UILabel!
    @IBOutlet weak var kiloLabel: UILabel!
    @IBOutlet weak var metrLabel: UILabel!
    
    
    @IBAction func textFiled(_ sender: UITextField) {
        if cent.isSelected{
            if let text = sender.text{
                let intText = Double(sender.text!)!
                centLabel.text = String(intText)
                metrLabel.text = String(intText / 100.0)
                kiloLabel.text = String(intText / 100000.0)
                dumLabel.text = String(intText * 0.394)
                futLabel.text = String(intText * 0.032)
                miliLabel.text = String(intText * 0.00000621)
            }
            
        }
        if metr.isSelected{
            if let text = sender.text{
                let intText = Double(sender.text!)!
                centLabel.text = String(intText * 100.0)
                metrLabel.text = String(intText)
                kiloLabel.text = String(intText / 100.0)
                dumLabel.text = String(intText * 39.3701)
                futLabel.text = String(intText * 3.28084)
                miliLabel.text = String(intText * 0.000621371)
            }
        }
        if kilo.isSelected{
            if let text = sender.text{
                let intText = Double(sender.text!)!
                centLabel.text = String(intText * 100000.0)
                metrLabel.text = String(intText * 1000.0)
                kiloLabel.text = String(intText)
                dumLabel.text = String(intText * 39370.1)
                futLabel.text = String(intText * 3280.84)
                miliLabel.text = String(intText * 0.621371)
            }
        }
        if dum.isSelected{
            if let text = sender.text{
                let intText = Double(sender.text!)!
                centLabel.text = String(intText * 2.54)
                metrLabel.text = String(intText * 0.0254)
                kiloLabel.text = String(intText * 0.0000254)
                dumLabel.text = String(intText)
                futLabel.text = String(intText * 0.083333)
                miliLabel.text = String(intText * 0.0000157)
            }
        }
        if fut.isSelected{
            if let text = sender.text{
                let intText = Double(sender.text!)!
                centLabel.text = String(intText * 30.48)
                metrLabel.text = String(intText * 0.3048)
                kiloLabel.text = String(intText * 0.0003048)
                dumLabel.text = String(intText * 12)
                futLabel.text = String(intText)
                miliLabel.text = String(intText * 0.000189394)
            }
        }
        if mili.isSelected{
            if let text = sender.text{
                let intText = Double(sender.text!)!
                centLabel.text = String(intText * 160934)
                metrLabel.text = String(intText * 1609.34)
                kiloLabel.text = String(intText * 1.60934)
                dumLabel.text = String(intText * 63360)
                futLabel.text = String(intText * 5280)
                miliLabel.text = String(intText)
            }
        }
            
}
    
}

