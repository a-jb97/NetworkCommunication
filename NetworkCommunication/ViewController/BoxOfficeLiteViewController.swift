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
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(30)
            make.height.equalTo(50)
        }
        
        rank1MovieNameLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(90)
            make.height.equalTo(50)
        }
        
        rank1MovieOpenDateLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(150)
            make.height.equalTo(50)
        }
        
        rank2Label.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(230)
            make.height.equalTo(50)
        }
        
        rank2MovieNameLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(290)
            make.height.equalTo(50)
        }
        
        rank2MovieOpenDateLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(350)
            make.height.equalTo(50)
        }
        
        rank3Label.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(430)
            make.height.equalTo(50)
        }
        
        rank3MovieNameLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.top.equalTo(490)
            make.height.equalTo(50)
        }
        
        rank3MovieOpenDateLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
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
