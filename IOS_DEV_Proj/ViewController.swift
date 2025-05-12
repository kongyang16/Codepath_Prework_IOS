//
//  ViewController.swift
//  IOS_DEV_Proj
//
//  Created by Kong Yang on 5/12/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeBackgroundColor: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // initial background
        view.backgroundColor = changeColor()
        
        // programmatically hook up the tap
        changeBackgroundColor.addTarget(
            self,
            action: #selector(changeBackgroundColorTapped(_:)),
            for: .touchUpInside
        )
    }

    // 3) helper to spit out a random UIColor
    func changeColor() -> UIColor {
        let red   = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue  = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @objc @IBAction func changeBackgroundColorTapped(_ sender: UIButton) {
        print("🔴 Button tapped!")
        view.backgroundColor = changeColor()
    }
}
