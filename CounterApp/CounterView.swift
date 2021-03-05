//
//  CounterView.swift
//  CounterApp
//
//  Created by 김동준 on 2021/03/05.
//

import Foundation
import UIKit

class CounterView: UIView{
    
    lazy var plusBtn = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup(){
        backgroundColor = .white
    }
}

extension UIView{
    func addSubViews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
