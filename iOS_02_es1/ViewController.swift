//
//  ViewController.swift
//  iOS_02_es1
//
//  Created by Gianni Savini on 04/05/17.
//  Copyright © 2017 Gianni Savini. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txvName: UITextField!
    @IBOutlet weak var lblSons: UILabel!
    @IBOutlet weak var SonsStepper: UIStepper!
    @IBOutlet weak var lblMarried: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var sldAge: UISlider!
    @IBOutlet weak var swtMarried: UISwitch!
    @IBOutlet weak var lblSave: UILabel!
    var user : User!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setSonsNumbers(_ sender: UIStepper) {
        lblSons.text = Int(sender.value).description
    }
    

    @IBAction func setAge(_ sender: UISlider) {
        lblAge.text = Int(sldAge.value).description
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txvName.resignFirstResponder()
        return true
    }
    @IBAction func setMarried(_ sender: UISwitch) {
        lblMarried.text = swtMarried.isOn ? "Sì" : "No"
    }
    
    @IBAction func save(_ sender: UIButton) {
        user = User.init(name: txvName.text!,
                         age: Int(sldAge.value),
                         married: swtMarried.isOn,
                         sons: Int(self.SonsStepper.value));
        let str = """
    Nome: \(user.name)
    Età:  \(user.age.description)
    Spostato: \(user.married.description)
    Numero figli: \(user.sons)
"""
        let alert = UIAlertController(title: "Dati inseriti", message: str, preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
            
        }))
        self.present(alert, animated: true, completion: nil)
        lblSave.text = str
    }
    
    
    

}

