//
//  ViewController.swift
//  HomeWork9
//
//  Created by Владимир Данилович on 12.01.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstVIew.backgroundColor = .red
        firstVIew.alpha = 0.3
        secondView.backgroundColor = .yellow
        secondView.alpha = 0.3
        thirdView.backgroundColor = .green
        thirdView.alpha = 0.3
        firstVIew.layer.cornerRadius = 50
        secondView.layer.cornerRadius = 50
        thirdView.layer.cornerRadius = 50
    }

    @IBOutlet weak var botton: UIButton!

    @IBOutlet weak var firstVIew: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!

    var tap = 0
    @IBAction func button(_ sender: UIButton) {
        if tap == 0 {
            sender.setTitle("NEXT", for: .normal)
            firstVIew.alpha = 1
            secondView.alpha = 0.3
            thirdView.alpha = 0.3
            tap += 1
        } else if tap == 1 {
            firstVIew.alpha = 1
            secondView.alpha = 1
            tap += 1
        } else if tap == 2 {
            firstVIew.alpha = 0.3
            secondView.alpha = 0.3
            thirdView.alpha = 1
            tap += 1
        } else if tap == 3 {
            firstVIew.alpha = 0.3
            secondView.alpha = 1
            thirdView.alpha = 0.3
            sender.setTitle("FINSH", for: .normal)
            tap = 0
        }
        }
    }
