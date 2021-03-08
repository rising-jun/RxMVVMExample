//
//  ViewController.swift
//  CounterApp
//
//  Created by 김동준 on 2021/03/05.
//

import UIKit
import ReactorKit
import RxCocoa

class CounterViewController: UIViewController, View {
    var disposeBag = DisposeBag()
    private var countNum: Int = 0

    lazy var counterView = CounterView(frame: view.frame)

    func bind(reactor: CounterReactor) {
        view = counterView
        
        counterView.plusBtn
            .rx
            .tap
            .map{[unowned self] _ in Reactor.Action.plusRequest(count: self.countNum)}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        counterView.minusBtn
            .rx
            .tap
            .map{[unowned self] _ in Reactor.Action.minusRequest(count: self.countNum)}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        reactor.state
            .map{
                [unowned self] val in
                self.countNum = val.countState
                return String(val.countState)}
            .distinctUntilChanged()
            .bind(to: counterView.countLabel.rx.text)
            .disposed(by: disposeBag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
}

