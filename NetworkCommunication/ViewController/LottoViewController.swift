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
    
    var drwNoPickerView = UIPickerView()
    
    let numberList: [Int] = Array(1...1181).reversed()
    
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
        
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13)
        
        return label
    }()
    
    let lineView = {
        let view = UIView()
        
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray5.cgColor
        
        return view
    }()
    
    let drwNoLabel = {
        let label = UILabel()
        
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .systemYellow
        
        return label
    }()
    
    let resultLabel = {
        let label = UILabel()
//        let attributedString = NSMutableAttributedString(string: "913회 당첨결과")
//        let range = NSRange(location: 0, length: 4)
//        let font = UIFont.boldSystemFont(ofSize: 20)
//        
//        label.font = .systemFont(ofSize: 20)
//        attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow.cgColor, range: range)
//        attributedString.addAttribute(.font, value: font, range: range)
//        label.attributedText = attributedString
        
        label.text = "당첨결과"
        label.font = .systemFont(ofSize: 20)
        
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
    
    let bonusTextLabel = {
        let label = UILabel()
        
        label.text = "보너스"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .systemGray
        label.textAlignment = .center
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureLayout()
        configureView()
        
        lottoTextField.inputView = drwNoPickerView
        
        drwNoPickerView.delegate = self
        drwNoPickerView.dataSource = self
        
        callRequest(url: "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=1181")
    }
    
    func callRequest(url: String) {
        let url = url
        
        AF.request(url, method: .get).validate(statusCode: 200..<300).responseDecodable(of: Lotto.self) { response in
            switch response.result {
            case .success(let value):
                print("success", value)
                
                self.dateLabel.text = "\(value.drwNoDate) 추첨"
                self.drwNoLabel.text = "\(String(value.drwNo))회"
                self.winningNumberLabel1.text = String(value.drwtNo1)
                self.winningNumberLabel2.text = String(value.drwtNo2)
                self.winningNumberLabel3.text = String(value.drwtNo3)
                self.winningNumberLabel4.text = String(value.drwtNo4)
                self.winningNumberLabel5.text = String(value.drwtNo5)
                self.winningNumberLabel6.text = String(value.drwtNo6)
                self.bonusWinningNumberLabel.text = String(value.bnusNo)
                
            case .failure(let error):
                print("fail", error)
            }
        }
    }
}

extension LottoViewController: ViewDesignProtocol {
    func configureHierarchy() {
        view.addSubview(lottoTextField)
        view.addSubview(noticeLabel)
        view.addSubview(dateLabel)
        view.addSubview(lineView)
        view.addSubview(drwNoLabel)
        view.addSubview(resultLabel)
        view.addSubview(winningNumberLabel1)
        view.addSubview(winningNumberLabel2)
        view.addSubview(winningNumberLabel3)
        view.addSubview(winningNumberLabel4)
        view.addSubview(winningNumberLabel5)
        view.addSubview(winningNumberLabel6)
        view.addSubview(plusLabel)
        view.addSubview(bonusWinningNumberLabel)
        view.addSubview(bonusTextLabel)
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
        
        lineView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(124)
            make.height.equalTo(1)
        }
        
        drwNoLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(135)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(150)
        }
        
        resultLabel.snp.makeConstraints { make in
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(135)
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
        
        bonusTextLabel.snp.makeConstraints { make in
            make.leading.equalTo(plusLabel).inset(49)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(240)
        }
    }
    
    func configureView() {
        view.backgroundColor = .white
    }
}

extension LottoViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lottoTextField.text = "\(numberList[row])"
        
        callRequest(url: "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=" + (lottoTextField.text ?? "1181"))
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(numberList[row])"
    }
}
