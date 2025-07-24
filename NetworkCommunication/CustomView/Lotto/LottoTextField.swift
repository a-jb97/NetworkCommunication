//
//  LottoTextField.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/23/25.
//

import UIKit

class LottoTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.textAlignment = .center
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.placeholder = "회차를 입력하세요"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
