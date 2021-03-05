//
//  ViewController.swift
//  CounterApp
//
//  Created by 김동준 on 2021/03/05.
//

import UIKit

class CounterViewController: UIViewController {

    lazy var counterView = CounterView(frame: view.frame)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view = counterView
        
    }


}

