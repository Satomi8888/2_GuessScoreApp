//
//  ViewController.swift
//  2_GuessScoreApp
//
//  Created by 遠山　聡美 on 2018/03/02.
//  Copyright © 2018年 Simple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        examImage.image = #imageLiteral(resourceName: "testimg")
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var examImage: UIImageView!
    var random = Int(arc4random_uniform(101))
    var count = 0

    @IBAction func tapButon(_ sender: Any) {
        //ボタンを押した時の処理
        if let answer = Int(textField.text!){
            count += 1
            if answer == random {
                resultLabel.text = "正解！\(count)回目で当たったよ"
            } else if answer > random {
                resultLabel.text = "もっと低いよ"
            } else if answer < random {
                resultLabel.text = "もっと高いよ"
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

