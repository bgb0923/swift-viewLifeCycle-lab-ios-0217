//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var y = 0
    
    @IBOutlet weak var box1 : UIView!
    @IBOutlet weak var box2 : UIView!
    @IBOutlet weak var box3 : UIView!
    @IBOutlet weak var box4 : UIView!
    @IBOutlet weak var box5 : UIView!
    @IBOutlet weak var box6 : UIView!
    @IBOutlet weak var box7 : UIView!
    
    @IBOutlet weak var text1 : UILabel!
    @IBOutlet weak var text2 : UILabel!
    @IBOutlet weak var text3 : UILabel!
    @IBOutlet weak var text4 : UILabel!
    @IBOutlet weak var text5 : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
        
        let x = randomDiceRoll()

        switch x {
        case 1:
            box4.isHidden = false
        case 2:
            box6.isHidden = false
            box2.isHidden = false
        case 3:
            box2.isHidden = false
            box4.isHidden = false
            box6.isHidden = false
        case 4:
            box1.isHidden = false
            box2.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        case 5:
            box1.isHidden = false
            box2.isHidden = false
            box4.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        case 6:
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
        default:
            print("This is not possible")
        }
        
        switch y {
        case 0:
            text1.text = String(x)
            y += 1
        case 1:
            text2.text = String(x)
            y += 1
        case 2:
            text3.text = String(x)
            y += 1
        case 3:
            text4.text = String(x)
            y += 1
        case 4:
            text5.text = String(x)
            y += 1
        default:
            text1.text = String(x)
            text2.text = "0"
            text3.text = "0"
            text4.text = "0"
            text5.text = "0"
            y = 1
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
