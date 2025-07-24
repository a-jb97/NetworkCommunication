//
//  LottoViewController.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/23/25.
//

import UIKit
import SnapKit
import Alamofire

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
    
    let winningNumberLabel1 = {
        let label = WinningNumberLabel()
        
        label.backgroundColor = .systemYellow
        
        return label
    }()
    
    let winningNumberLabel2	 = {
        let label = WinningNumberLabel()
        
        label.backgroundColor = .systemBlue
        
        return label
    }()
    
    let winningNumberLabel3 = {
        let label = WinningNumberLabel()
        
        label.backgroundColor = .systemBlue
        
        return label
    }()
    
    let winningNumberLabel4 = {
        let label = WinningNumberLabel()
        
        label.backgroundColor = .systemRed
        
        return label
    }()
    
    let winningNumberLabel5 = {
        let label = WinningNumberLabel()
        
        label.backgroundColor = .systemRed
        
        return label
    }()
    
    let winningNumberLabel6 = {
        let label = WinningNumberLabel()
        
        label.backgroundColor = .systemGray
        
        return label
    }()
    
    let plusLabel = {
        let label = UILabel()
        
        label.text = "+"
        label.font = .boldSystemFont(ofSize: 17)
        label.textAlignment = .center
        
        return label
    }()
    
    let bonusWinningNumberLabel = {
        let label = WinningNumberLabel()
        
        label.backgroundColor = .systemGray
        
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
        view.addSubview(winningNumberLabel1)
        view.addSubview(winningNumberLabel2)
        view.addSubview(winningNumberLabel3)
        view.addSubview(winningNumberLabel4)
        view.addSubview(winningNumberLabel5)
        view.addSubview(winningNumberLabel6)
        view.addSubview(plusLabel)
        view.addSubview(bonusWinningNumberLabel)
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
        
        winningNumberLabel1.snp.makeConstraints { make in
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        winningNumberLabel2.snp.makeConstraints { make in
            make.leading.equalTo(winningNumberLabel1).inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        winningNumberLabel3.snp.makeConstraints { make in
            make.leading.equalTo(winningNumberLabel2).inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        winningNumberLabel4.snp.makeConstraints { make in
            make.leading.equalTo(winningNumberLabel3).inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        winningNumberLabel5.snp.makeConstraints { make in
            make.leading.equalTo(winningNumberLabel4).inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        winningNumberLabel6.snp.makeConstraints { make in
            make.leading.equalTo(winningNumberLabel5).inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        plusLabel.snp.makeConstraints { make in
            make.leading.equalTo(winningNumberLabel6).inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        bonusWinningNumberLabel.snp.makeConstraints { make in
            make.leading.equalTo(plusLabel).inset(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(195)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
    }
    
    func configureView() {
        view.backgroundColor = .white
    }
}
