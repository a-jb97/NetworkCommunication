//
//  MainViewButton.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/23/25.
//

import UIKit

class MainViewButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setTitle("로또 화면", for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
