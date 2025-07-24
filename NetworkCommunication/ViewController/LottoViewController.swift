//
//  LottoViewController.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/23/25.
//

import UIKit
import SnapKit

class LottoViewController: UIViewController {
    
    let lottoTextField = {
        
        let textField = LottoTextField()
        
        return textField
        
    }()
    
    let noticeLabel = {
        
        let label = UILabel()
        
        label.text = "당첨번호 안내"
        label.font = .systemFont(ofSize: 15)
        
        return label
        
    }()
    
    let dateLabel = {
        
        let label = UILabel()
        
        label.text = "2020-05-30 추첨"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13)
        
        return label
        
    }()
    
    let resultLabel = {
        
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: "913회 당첨결과")
        let range = NSRange(location: 0, length: 4)
        let font = UIFont.boldSystemFont(ofSize: 20)
        
        label.font = .systemFont(ofSize: 20)
        attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow.cgColor, range: range)
        attributedString.addAttribute(.font, value: font, range: range)
        label.attributedText = attributedString
        
        return label
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureLayout()
        configureView()
        
    }
    
}

extension LottoViewController: ViewDesignProtocol {
    
    func configureHierarchy() {
        
        view.addSubview(lottoTextField)
        view.addSubview(noticeLabel)
        view.addSubview(dateLabel)
        view.addSubview(resultLabel)
    }
    
    func configureLayout() {
        lottoTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.height.equalTo(50)
        }
        
        noticeLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(84)
            make.height.equalTo(40)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(84)
            make.height.equalTo(40)
        }
        
        resultLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(150)
        }
    }
    
    func configureView() {
        
        view.backgroundColor = .white
        
    }
    
}
