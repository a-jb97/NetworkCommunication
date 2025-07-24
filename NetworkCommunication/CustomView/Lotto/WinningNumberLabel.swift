//
//  WinningNumberLabel.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/24/25.
//

import UIKit

class WinningNumberLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.font = .boldSystemFont(ofSize: 17)
        self.textColor = UIColor.white
        self.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
