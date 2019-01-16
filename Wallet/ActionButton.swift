//
//  ActionButton.swift
//  Wallet
//
//  Created by Johanes Susanto on 11/30/18.
//  Copyright © 2018 Johanes Susanto. All rights reserved.
//

import UIKit

class ActionButton: UIButton {
    
    var title: String
    
    init(title: String) {
        
        self.title = title
        super.init(frame: CGRect.zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        setupViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var buttonNameLabel: UILabel = {
        let label = UILabel()
        label.text = title
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir-Heavy", size: 16)
        
      return label
    }()
    func setupViews() {  
        
     addSubview(buttonNameLabel)
     buttonNameLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
     buttonNameLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true 
    }
}
