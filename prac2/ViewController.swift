//
//  ViewController.swift
//  prac2
//
//  Created by Israel on 22/03/22.
//

import UIKit

class ViewController: UIViewController {
    var activo:Bool = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var btnIna: UIButton!
    
    @IBOutlet weak var txtFrase: UITextField!
    
    @IBOutlet weak var txtvFrases: UITextView!
    
    @IBOutlet weak var imgBM: UIImageView!
        
    @IBOutlet weak var agregaFrase: UIButton!
    
    @IBOutlet weak var switchImg: UISwitch!
    
    @IBOutlet weak var sliderImg: UISlider!
    
   
    @IBAction func switchBM(_ sender: Any) {
        
        if (switchImg.isOn){
            imgBM.alpha = CGFloat(sliderImg.value)
            imgBM.image = UIImage(named:"angel")
        }
        else{
            imgBM.alpha = CGFloat(sliderImg.value)
            imgBM.image = UIImage(named: "evil")
        }
    }
    
    @IBAction func sliderImg(_ sender: UISlider) {
        imgBM.alpha = CGFloat(sender.value)
        
    }
    
    @IBAction func btnFrase(_ sender: UIButton) {
        txtvFrases.text += "\n" + txtFrase.text!
        txtFrase.text = ""
    }
    
    @IBAction func btnInhabilita(_ sender: UIButton) {
        if(!activo){
            sender.setTitle("deshabilitar", for: .normal)
            
            txtFrase.isEnabled = true
            agregaFrase.isEnabled = true
            switchImg.isEnabled = true
            sliderImg.isEnabled = true
            activo=true
            
        }else{
            sender.setTitle("habilitar", for: .normal)
            txtFrase.isEnabled = false
            agregaFrase.isEnabled = false
            switchImg.isEnabled = false
            sliderImg.isEnabled = false
            activo = false
            
        }
        
        
    }
}

