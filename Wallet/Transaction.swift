//
//  Transaction.swift
//  Wallet
//
//  Created by Johanes Susanto on 1/9/19.
//  Copyright © 2019 Johanes Susanto. All rights reserved.
//

class Transaction {
    
    private let isDeposit: Bool
    private let amount: Int
    
    init(isDeposit: Bool, amount: Int) {
        
        self.isDeposit = isDeposit
        self.amount = amount
        
    }
    
    func getType() -> String {
        
        if isDeposit == true {
            return "Deposit"
        }
        
        return "withdraw"
    }
    
    func getAmount() -> Int {
        return amount 
    }
}
