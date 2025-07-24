//
//  LottoNumberStackView.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/24/25.
//

import UIKit

class LottoNumberStackView: UIStackView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        let label1 = {
            
            let label = UILabel()
            
            label.text = "6"
            
            return label
        }()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
