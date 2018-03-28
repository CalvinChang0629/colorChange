//
//  ViewController.swift
//  colorChange
//
//  Created by calvin.chang on 2018/3/26.
//  Copyright © 2018年 calvin.chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var clothesColorR:Float = 1.0
    var clothesColorG:Float = 0
    var clothesColorB:Float = 0
    var clothesColorA:Float = 1.0
    var skirtColorR:Float = 1.0
    var skirtColorG:Float = 0
    var skirtColorB:Float = 0
    var skirtColorA:Float = 1.0
    var shoesColorR:Float = 1.0
    var shoesColorG:Float = 0
    var shoesColorB:Float = 0
    var shoesColorA:Float = 1.0
    
    @IBOutlet weak var selectControl: UISegmentedControl!
    @IBOutlet weak var clothesColor: UIImageView!
     @IBOutlet weak var skirtColor: UIImageView!
     @IBOutlet weak var shoesColor: UIImageView!
    @IBOutlet weak var valueR: UILabel!
     @IBOutlet weak var valueG: UILabel!
     @IBOutlet weak var valueB: UILabel!
     @IBOutlet weak var valueA: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var colorA: UISlider!
    @IBOutlet weak var colorR: UISlider!
    @IBOutlet weak var colorG: UISlider!
    @IBOutlet weak var colorB: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func selectChange(_ sender: Any) {
        if(selectControl.selectedSegmentIndex == 0){
            colorR.value=clothesColorR
            let numberR : Int = (Int)(clothesColorR*255)
            valueR.text="\(numberR)"
            
            colorG.value=clothesColorG
            let numberG : Int = (Int)(clothesColorG*255)
            valueG.text="\(numberG)"
            
            colorB.value=clothesColorB
            let numberB : Int = (Int)(clothesColorB*255)
            valueB.text="\(numberB)"
            
            colorA.value=clothesColorA
            let numberA : Int = (Int)(clothesColorA*255)
            valueA.text="\(numberA)"
        }else if(selectControl.selectedSegmentIndex == 1){
            colorR.value=skirtColorR
            let numberR : Int = (Int)(skirtColorR*255)
            valueR.text="\(numberR)"
            
            colorG.value=skirtColorG
            let numberG : Int = (Int)(skirtColorG*255)
            valueG.text="\(numberG)"
            
            colorB.value=skirtColorB
            let numberB : Int = (Int)(skirtColorB*255)
            valueB.text="\(numberB)"
            
            colorA.value=skirtColorA
            let numberA : Int = (Int)(skirtColorA*255)
            valueA.text="\(numberA)"
        }else if(selectControl.selectedSegmentIndex == 2){
            colorR.value=shoesColorR
            let numberR : Int = (Int)(shoesColorR*255)
            valueR.text="\(numberR)"
            
            colorG.value=shoesColorG
            let numberG : Int = (Int)(shoesColorG*255)
            valueG.text="\(numberG)"
            
            colorB.value=shoesColorB
            let numberB : Int = (Int)(shoesColorB*255)
            valueB.text="\(numberB)"
            
            colorA.value=shoesColorA
            let numberA : Int = (Int)(shoesColorA*255)
            valueA.text="\(numberA)"
        }
    }
    
    @IBAction func colorChangeAction(_ sender:UISlider) {
        if(selectControl.selectedSegmentIndex == 0){
            if(sender == colorR){
                let number : Int = (Int)(colorR.value*255)
                valueR.text = "\(number)"
                clothesColorR = colorR.value
            }else if(sender == colorG){
                let number : Int = (Int)(colorG.value*255)
                valueG.text = "\(number)"
                clothesColorG = colorG.value
            }else if(sender == colorB){
                let number : Int = (Int)(colorB.value*255)
                valueB.text = "\(number)"
                clothesColorB = colorB.value
            }else if(sender == colorA){
                let number : Int = (Int)(colorA.value*255)
                valueA.text = "\(number)"
                clothesColorA = colorA.value
            }
            
            clothesColor.backgroundColor=UIColor(red: CGFloat(colorR.value), green: CGFloat(colorG.value), blue:
                CGFloat(colorB.value), alpha: CGFloat(colorA.value))
        }else if(selectControl.selectedSegmentIndex == 1){
            if(sender == colorR){
                let number : Int = (Int)(colorR.value*255)
                valueR.text = "\(number)"
                skirtColorR = colorR.value
            }else if(sender == colorG){
                let number : Int = (Int)(colorG.value*255)
                valueG.text = "\(number)"
                skirtColorG = colorG.value
            }else if(sender == colorB){
                let number : Int = (Int)(colorB.value*255)
                valueB.text = "\(number)"
                skirtColorB = colorB.value
            }else if(sender == colorA){
                let number : Int = (Int)(colorA.value*255)
                valueA.text = "\(number)"
                skirtColorA = colorA.value
            }
            
            skirtColor.backgroundColor=UIColor(red: CGFloat(colorR.value), green: CGFloat(colorG.value), blue:
                CGFloat(colorB.value), alpha: CGFloat(colorA.value))
        }else if(selectControl.selectedSegmentIndex == 2){
            if(sender == colorR){
                let number : Int = (Int)(colorR.value*255)
                valueR.text = "\(number)"
                shoesColorR = colorR.value
            }else if(sender == colorG){
                let number : Int = (Int)(colorG.value*255)
                valueG.text = "\(number)"
                shoesColorG = colorG.value
            }else if(sender == colorB){
                let number : Int = (Int)(colorB.value*255)
                valueB.text = "\(number)"
                shoesColorB = colorB.value
            }else if(sender == colorA){
                let number : Int = (Int)(colorA.value*255)
                valueA.text = "\(number)"
                shoesColorA = colorA.value
            }
            
            shoesColor.backgroundColor=UIColor(red: CGFloat(colorR.value), green: CGFloat(colorG.value), blue:
                CGFloat(colorB.value), alpha: CGFloat(colorA.value))
        }
    }
    
}

