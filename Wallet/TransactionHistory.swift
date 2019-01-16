//
//  TransactionHistory.swift
//  Wallet
//
//  Created by Johanes Susanto on 12/14/18.
//  Copyright © 2018 Johanes Susanto. All rights reserved.
//

import UIKit

class TransactionLibrary: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        
        translatesAutoresizingMaskIntoConstraints = false 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    let transactionHistoryLabel: UILabel = {
    let label = UILabel()
        label.font = UIFont(name: "Avenir-Heavy", size: 16)
        label.text = "Transaction History"
        label.textColor = UIColor.rgb(red: 182, green: 186, blue: 198, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.cornerRadius = 6
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    let transactionTypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Heavy", size: 16)
        label.text = "Deposit"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    let collectionView = TransactionCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    func setupViews() {
        
        addSubview(transactionHistoryLabel)
        transactionHistoryLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        transactionHistoryLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: transactionHistoryLabel.bottomAnchor, constant: 24).isActive = true
        collectionView.leftAnchor.constraint(equalTo: transactionHistoryLabel.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
    }
    
}
