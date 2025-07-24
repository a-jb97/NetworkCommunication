//
//  BoxOfficeLiteLabel.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/24/25.
//

import UIKit

class BoxOfficeLiteLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.textColor = .white
        self.layer.cornerRadius = 10
        self.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
