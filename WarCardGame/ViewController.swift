//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jayden Tran on 7/2/21.
//  Copyright © 2021 Jayden Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    private var playerScore = 0
    private var bankerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            playerScore += 1
        } else if rightNumber > leftNumber {
            bankerScore += 1
        } else {
            // nothing
        }
        leftScoreLabel.text = String(playerScore)
        rightScoreLabel.text = String(bankerScore)
        
        
    }
    
}

