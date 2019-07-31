//
//  ViewController.swift
//  Fancy Text Ceator
//
//  Created by Nurul Ahsan on 22/7/19.
//  Copyright © 2019 Nurul Ahsan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var shaowButton: UIButton!
    
    var fontSize: CGFloat = 30
    var stat = false
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enter(_ sender: Any) {
        label.text = textField.text
        self.resignFirstResponder()
    }
    
    @IBAction func red(_ sender: Any) {
        label.textColor = UIColor.red
    }
    
    @IBAction func green(_ sender: Any) {
        label.textColor = UIColor(red: 24.0/255.0, green: 234.0/255.0, blue: 22.0/255.0, alpha: 1.0)
    }
    
    @IBAction func blue(_ sender: Any) {
        label.textColor = UIColor.blue
    }
    
    @IBAction func font1(_ sender: Any) {
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
    }
    @IBAction func font2(_ sender: Any) {
        label.font = UIFont(name: "Moon Flower", size: fontSize)
    }
    
    @IBAction func font3(_ sender: Any) {
        label.font = UIFont(name: "LemonMilk", size: fontSize)
    }
    @IBAction func font4(_ sender: Any) {
        label.font = UIFont(name: "Blacksword", size: fontSize)
    }
    
    @IBAction func shadow(_ sender: Any) {
        if stat == false
        {
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 2.5
            
            stat = true
            
            shaowButton.setTitle("Remove Shadow", for: UIControlState.normal)
        }
        else
        {
            label.layer.shadowOpacity = 0
            
            stat = false
            
            shaowButton.setTitle("Set Shadow", for: UIControlState.normal)
        }
        
    }
    
    @IBAction func small(_ sender: Any) {
        fontSize = 30
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func medium(_ sender: Any) {
        fontSize = 40
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func large(_ sender: Any) {
        fontSize = 80
        label.font = label.font.withSize(fontSize)
    }
    
    
    
    
    
    
}

