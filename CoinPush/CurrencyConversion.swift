//
//  CurrencyConversion.swift
//  CoinPush
//
//  Created by Bijan Massoumi on 7/12/17.
//  Copyright © 2017 Goods and Services. All rights reserved.
//

import UIKit

class CurrencyConversion {
<<<<<<< HEAD
    var fromCurrency: String
    var toCurrency: String
=======
    var fromTag: String
    var toTag: String
    
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
    var pushEnabled: Bool
    
    var increaseValue: Float32?
    var decreaseValue: Float32?
    
    
    //MARK: Initialization
    
<<<<<<< HEAD
    init?(fromCurrency: String, toCurrency: String, pushEnabled: Bool, increaseValue: Float32?, decreaseValue: Float32?) {

        self.fromCurrency = fromCurrency
        self.toCurrency = toCurrency
=======
    init?(fromTag: String, toTag: String, pushEnabled: Bool, increaseValue: Float32?, decreaseValue: Float32?) {

        self.fromTag = fromTag
        self.toTag = toTag
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
        self.pushEnabled = pushEnabled
        self.increaseValue = increaseValue
        self.decreaseValue = decreaseValue
        
    }
    
}
