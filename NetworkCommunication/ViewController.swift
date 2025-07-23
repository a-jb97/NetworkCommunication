//
//  ViewController.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/23/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let lottoViewButton = {
        
        let button = UIButton()
        
        button.setTitle("로또 화면", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 15
        
        return button
        
    }()
    
    let boxOfficeViewButton = {
        
        let button = UIButton()
        
        button.setTitle("박스 오피스 화면", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 15
        
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureLayout()
        configureView()
    }
    
    
}

extension ViewController: ViewDesignProtocol {
    
    func configureHierarchy() {
        
        view.addSubview(lottoViewButton)
        view.addSubview(boxOfficeViewButton)
        
    }
    
    func configureLayout() {
        
        lottoViewButton.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(150)
            make.height.equalTo(50)
        }
        
        boxOfficeViewButton.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(220)
            make.height.equalTo(50)
        }
        
    }
    
    func configureView() {
        
        view.backgroundColor = .white
        
    }
    
}
