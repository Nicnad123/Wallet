//
//  BalanceBox.swift
//  Wallet
//
//  Created by Johanes Susanto on 11/21/18.
//  Copyright © 2018 Johanes Susanto. All rights reserved.
//

import UIKit

class BalanceBox: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.cornerRadius = 12
        translatesAutoresizingMaskIntoConstraints = false

        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    let labelOne: UILabel = {
//
//        let label = UILabel()
//        return label
//        
//    }()
//
//    let labelTwo: UILabel = {
//
//       let Label = UILabel()
//       return Label
//    }()
//    let labelThree: UILabel = {
//       let label = UILabel()
//        return label
//    }()
//    let labelFour: UILabel = {
//        let label = UILabel()
//        return label
//    }()
    let balanceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Futura-Medium", size: 30)
        label.text = "$56.78"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let currencyTypeLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Avenir-Heavy", size: 20)
        label.text = "USD - U.S. Dollar"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let maximumWithdrawLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Heavy", size: 15)
        label.text = "Minimum withdrawl amount is $50"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    func setupViews() {
        
        addSubview(balanceLabel)
        balanceLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        balanceLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        
        addSubview(currencyTypeLabel)
        currencyTypeLabel.topAnchor.constraint(equalTo: balanceLabel.bottomAnchor, constant: 4).isActive = true
        currencyTypeLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        addSubview(maximumWithdrawLabel)
        maximumWithdrawLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        maximumWithdrawLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
}
