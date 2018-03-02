//
//  ViewController.swift
//  2_GuessScoreApp
//
//  Created by 遠山　聡美 on 2018/03/02.
//  Copyright © 2018年 Simple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    var random = String(arc4random_uniform(100) + 1)

    @IBAction func tapButon(_ sender: Any) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

