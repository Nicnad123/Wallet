//
//  ViewController.swift
//  Wallet
//
//  Created by Johanes Susanto on 11/16/18.
//  Copyright © 2018 Johanes Susanto. All rights reserved.
//

import UIKit

class WalletViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
    }
    
    let withdrawButton = ActionButton(title: "Withdraw")
    let balanceBox = BalanceBox()
    let depositButton = ActionButton(title: "Deposit")
    let transactionHistory = TransactionLibrary()
    func setupViews() {
        
        view.backgroundColor = UIColor.rgb(red: 229, green: 230, blue: 237, alpha: 1)
        self.title = "Wallet"
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.rgb(red: 20, green: 20, blue: 20, alpha: 1),
            NSAttributedString.Key.font: UIFont(name: "Avenir-Heavy", size: 24)!
        ]
        
        view.addSubview(balanceBox)
        balanceBox.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        balanceBox.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        balanceBox.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        balanceBox.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        view.addSubview(withdrawButton)
        withdrawButton.topAnchor.constraint(equalTo: balanceBox.bottomAnchor, constant: 24).isActive = true
        withdrawButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        withdrawButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -8).isActive = true
        withdrawButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        view.addSubview(depositButton)
        depositButton.topAnchor.constraint(equalTo: balanceBox.bottomAnchor, constant: 24).isActive = true
        depositButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 8).isActive = true
        depositButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        depositButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        view.addSubview(transactionHistory)
        transactionHistory.topAnchor.constraint(equalTo: depositButton.bottomAnchor, constant: 32).isActive = true
        transactionHistory.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        transactionHistory.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        transactionHistory.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32).isActive = true
        
    }

}
extension UIColor {
    class func rgb(red: Int, green: Int, blue: Int, alpha: Float) ->UIColor {
        return  UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: CGFloat(alpha))
    }
}
