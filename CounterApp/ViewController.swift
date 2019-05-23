//
//  ViewController.swift
//  CounterApp
//
//  Created by honda-yusuke on 2019/05/23.
//  Copyright © 2019 honda-yusuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countUpButton: UIButton!
    @IBOutlet weak var CountDownButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countLabel!.text = "0"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushCountUpButton() {
        guard let count = countLabel!.text.flatMap(Int.init) else
        {
            return
        }
        countLabel.text = "\(count + 1)"
    }
    
    @IBAction func pushCountDownButton() {
        guard let count = countLabel!.text.flatMap(Int.init) else
        {
            return
        }
        countLabel.text = "\(count - 1)"
    }
}

