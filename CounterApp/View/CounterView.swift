//
//  CounterView.swift
//  CounterApp
//
//  Created by 김동준 on 2021/03/05.
//

import Foundation
import UIKit
import SnapKit


class CounterView: UIView{
    
    lazy var plusBtn = UIButton()
    lazy var minusBtn = UIButton()
    lazy var countLabel = UILabel()
    
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
        addSubViews(plusBtn, minusBtn, countLabel)
        
        countLabel.text = "0"
        countLabel.textColor = .black
        countLabel.textAlignment = .center
        countLabel.font = countLabel.font.withSize(24)
        countLabel.snp.makeConstraints { (make) in
            make.center.equalTo(self)
            make.width.equalTo(100)
            make.height.equalTo(80)
        }
        
        plusBtn.setTitle("+", for: .normal)
        plusBtn.setTitleColor(.black, for: .normal)
        plusBtn.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.leading.equalTo(countLabel.snp.trailing).offset(30)
            make.centerY.equalTo(countLabel.snp.centerY)
        }
        
        minusBtn.setTitle("-", for: .normal)
        minusBtn.setTitleColor(.black, for: .normal)
        minusBtn.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.trailing.equalTo(countLabel.snp.leading).offset(-30)
            make.centerY.equalTo(countLabel.snp.centerY)
        }
        
        
    }
}

extension UIView{
    func addSubViews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
