//
//  BoxOfficeLiteViewController.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/24/25.
//

import UIKit
import SnapKit
import Alamofire

class BoxOfficeLiteViewController: UIViewController {
    let rank1Label = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "1위"
        label.layer.backgroundColor = UIColor.blue.cgColor
        
       return label
    }()
    
    let rank1MovieNameLabel = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "1위 제목"
        label.layer.backgroundColor = UIColor.blue.cgColor
        
        return label
    }()
    
    let rank1MovieOpenDateLabel = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "1위 개봉일"
        label.layer.backgroundColor = UIColor.blue.cgColor
        
        return label
    }()
    
    let rank2Label = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "2위"
        label.layer.backgroundColor = UIColor.brown.cgColor
        
        return label
    }()
    
    let rank2MovieNameLabel = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "2위 제목"
        label.layer.backgroundColor = UIColor.brown.cgColor
        
       return label
    }()
    
    let rank2MovieOpenDateLabel = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "2위 개봉일"
        label.layer.backgroundColor = UIColor.brown.cgColor
        
       return label
    }()
    
    let rank3Label = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "3위"
        label.layer.backgroundColor = UIColor.darkGray.cgColor
        
       return label
    }()
    
    let rank3MovieNameLabel = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "3위 제목"
        label.layer.backgroundColor = UIColor.darkGray.cgColor
        
       return label
    }()
    
    let rank3MovieOpenDateLabel = {
        let label = BoxOfficeLiteLabel()
        
        label.text = "3위 개봉일"
        label.layer.backgroundColor = UIColor.darkGray.cgColor
        
       return label
    }()
    
    let boxOfficeTextField = {
        let textField = BoxOfficeTextField()
        
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureLayout()
        configureView()
        
        callRequest(url: "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=3d21e6069bf78850c738916d85c1cbe0&targetDt=20250723")
        
        boxOfficeTextField.addTarget(self, action: #selector(boxOfficeTextFieldDidEndOnExit), for: .editingDidEndOnExit)
    }
    
    func callRequest(url: String) {
        let url = url
        
        AF.request(url, method: .get).validate(statusCode: 200..<300).responseDecodable(of: BoxOfficeResult.self) { response in
            switch response.result {
            case .success(let value):
                print("success", value)
                
                self.rank1Label.text = "\(value.boxOfficeResult.dailyBoxOfficeList[0].rank)위"
                self.rank1MovieNameLabel.text = value.boxOfficeResult.dailyBoxOfficeList[0].movieNm
                self.rank1MovieOpenDateLabel.text = value.boxOfficeResult.dailyBoxOfficeList[0].openDt
                
                self.rank2Label.text = "\(value.boxOfficeResult.dailyBoxOfficeList[1].rank)위"
                self.rank2MovieNameLabel.text = value.boxOfficeResult.dailyBoxOfficeList[1].movieNm
                self.rank2MovieOpenDateLabel.text = value.boxOfficeResult.dailyBoxOfficeList[1].openDt
                
                self.rank3Label.text = "\(value.boxOfficeResult.dailyBoxOfficeList[2].rank)위"
                self.rank3MovieNameLabel.text = value.boxOfficeResult.dailyBoxOfficeList[2].movieNm
                self.rank3MovieOpenDateLabel.text = value.boxOfficeResult.dailyBoxOfficeList[2].openDt
                
            case .failure(let error):
                print("fail", error)
            }
        }
    }
    
    @objc func boxOfficeTextFieldDidEndOnExit() {
        callRequest(url: "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=3d21e6069bf78850c738916d85c1cbe0&targetDt=" + (boxOfficeTextField.text ?? "20250723"))
    }
}

extension BoxOfficeLiteViewController: ViewDesignProtocol {
    func configureHierarchy() {
        view.addSubview(rank1Label)
        view.addSubview(rank1MovieNameLabel)
        view.addSubview(rank1MovieOpenDateLabel)
        
        view.addSubview(rank2Label)
        view.addSubview(rank2MovieNameLabel)
        view.addSubview(rank2MovieOpenDateLabel)
        
        view.addSubview(rank3Label)
        view.addSubview(rank3MovieNameLabel)
        view.addSubview(rank3MovieOpenDateLabel)
        
        view.addSubview(boxOfficeTextField)
    }
    
    func configureLayout() {
        rank1Label.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(30)
            make.height.equalTo(50)
        }
        
        rank1MovieNameLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(90)
            make.height.equalTo(50)
        }
        
        rank1MovieOpenDateLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(150)
            make.height.equalTo(50)
        }
        
        rank2Label.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(230)
            make.height.equalTo(50)
        }
        
        rank2MovieNameLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(290)
            make.height.equalTo(50)
        }
        
        rank2MovieOpenDateLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(350)
            make.height.equalTo(50)
        }
        
        rank3Label.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(430)
            make.height.equalTo(50)
        }
        
        rank3MovieNameLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(490)
            make.height.equalTo(50)
        }
        
        rank3MovieOpenDateLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(550)
            make.height.equalTo(50)
        }
        
        boxOfficeTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(640)
            make.height.equalTo(50)
        }
    }
    
    func configureView() {
        view.backgroundColor = .white
    }
}
