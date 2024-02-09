//
//  ViewController.swift
//  Fondos Y Colores
//
//  Created by Alumno on 07/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var background: UIView!
    @IBOutlet weak var redValue: UISlider!
    @IBOutlet weak var blueValue: UISlider!
    @IBOutlet weak var greenValue: UISlider!
    @IBOutlet weak var alphaValue: UISlider!
    @IBOutlet weak var rText: UILabel!
    @IBOutlet weak var gText: UILabel!
    @IBOutlet weak var bText: UILabel!
    @IBOutlet weak var aText: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeBgColor() {
        background.backgroundColor = UIColor(red: CGFloat(redValue.value), green: CGFloat(greenValue.value), blue: CGFloat(blueValue.value), alpha: 1)
    }


    @IBAction func rSlider(_ sender: UISlider) {
        changeBgColor()
        rText.text = String(Int(redValue.value * 256))
    }
    
    
    @IBAction func gSlider(_ sender: UISlider) {
        changeBgColor()
        gText.text = String(Int(greenValue.value * 256))
    }
    
    
    @IBAction func bSlider(_ sender: UISlider) {
        changeBgColor()
        bText.text = String(Int(blueValue.value * 256))
    }
    
    
    @IBAction func aSlider(_ sender: UISlider) {
        image.alpha = CGFloat(sender.value)
        aText.text = String(sender.value)
    }
}

