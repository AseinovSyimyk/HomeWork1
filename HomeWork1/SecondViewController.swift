//
//  SecondViewController.swift
//  HomeWork1
//
//  Created by User on 22/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let NextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Back", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.blue, for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initAction()
        view.backgroundColor = .white
    }
    private func initUI(){
        
        view.backgroundColor = .systemBlue
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        NextButton.heightAnchor.constraint(equalToConstant: 16).isActive = true
        NextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -98).isActive = true
        NextButton.widthAnchor.constraint(equalToConstant: 210).isActive = true
        NextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -94).isActive = true
        NextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 98).isActive = true
        
        
        
        
        
        
    }
    private func initAction() {
        NextButton.addTarget(self, action: #selector(Back), for: .touchUpInside)
        
    }
    @objc func Back(_ sender: UIButton){
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .partialCurl
        present(vc, animated: true)
    }
}
