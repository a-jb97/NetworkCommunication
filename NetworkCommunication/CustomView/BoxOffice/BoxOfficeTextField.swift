//
//  BoxOfficeTextField.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/24/25.
//

import UIKit

class BoxOfficeTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(underlineView)
        
        underlineView.snp.makeConstraints { make in
            make.top.equalTo(self.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(5)
        }
        
        self.borderStyle = .none
        self.placeholder = "날짜를 입력하세요 (예 : 20250724)"
    }
    
    private lazy var underlineView: UIView = {
        let lineView = UIView()
        
        lineView.backgroundColor = .black
        
        return lineView
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
