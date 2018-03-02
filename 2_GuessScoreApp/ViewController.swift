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
    @IBOutlet weak var resultLabel: UILabel!
    
    var random = Int(arc4random_uniform(101))
    var count = 0

    @IBAction func tapButon(_ sender: Any) {
        //nilとテキスト入力の場合の処理、0〜100以外の数字の時の処理
        count += 1
        let answer = Int(textField.text!)!
        if answer == random {
            resultLabel.text = "正解！\(count)"
        } else if answer > random {
            resultLabel.text = "もっと低いよ"
        } else if answer < random {
            resultLabel.text = "もっと高いよ"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

