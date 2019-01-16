//
//  TransactionCollectionView.swift
//  Wallet
//
//  Created by Johanes Susanto on 12/17/18.
//  Copyright © 2018 Johanes Susanto. All rights reserved.
//

import UIKit

class TransactionCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cellID"

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        backgroundColor = UIColor.white
        layer.cornerRadius = 6
        showsVerticalScrollIndicator = false
        
        delegate = self
        dataSource = self
        register(TransactionCell.self, forCellWithReuseIdentifier: cellID)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? TransactionCell else {
            fatalError()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: 80)
    }
    
    
}

class TransactionCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        
        backgroundColor = UIColor.clear
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(transactionTypeLabel)
        transactionTypeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor, constant: -8).isActive = true
        transactionTypeLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        
        addSubview(depositMoney)
        depositMoney.topAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor, constant: 8).isActive = true
        depositMoney.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
    }
    let transactionTypeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Deposit"
        label.font = UIFont(name: "Avenir-Heavy", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    let depositMoney: UILabel = {
        
       let label = UILabel()
        label.text = "$23"
        label.font = UIFont(name: "Avenir-Heavy", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
}
