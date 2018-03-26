//
//  ViewController.swift
//  colorChange
//
//  Created by calvin.chang on 2018/3/26.
//  Copyright © 2018年 calvin.chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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


    @IBAction func colorChangeAction(_ sender:UISlider) {
        image.backgroundColor=UIColor(red: CGFloat(colorR.value), green: CGFloat(colorG.value), blue:
            CGFloat(colorB.value), alpha: CGFloat(colorA.value))
        
        if(sender == colorR){
            let number : Int = (Int)(colorR.value*255)
            valueR.text = "\(number)"
        }else if(sender == colorG){
            let number : Int = (Int)(colorG.value*255)
            valueG.text = "\(number)"
        }else if(sender == colorB){
            let number : Int = (Int)(colorB.value*255)
            valueB.text = "\(number)"
        }else if(sender == colorA){
            let number : Int = (Int)(colorA.value*255)
            valueA.text = "\(number)"
        }
    }
    
}

