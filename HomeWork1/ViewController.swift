//
//  ViewController.swift
//  HomeWork1
//
//  Created by User on 22/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let ViewInfo: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 25
        return view
    }()
    private let NameTF : UITextField = {
        let label = UITextField()
        label.font = .boldSystemFont(ofSize: 18)
        label.backgroundColor = .white
        label.textColor = .black
        label.layer.cornerRadius = 8
        return label
    }()
    private let NextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.blue, for: .normal)
        return button
    }()
    private let ControlButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 20
        
        return button
    }()
    
    private let imageView = UIImageView()
    
    private let divider = UIView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        initUI2()
        installView()
        initAction()
        configureNameTF()
        initActionTF()
        configureDivider()
    }
    private func installView() {
        view.addSubview(ViewInfo)
        ViewInfo.translatesAutoresizingMaskIntoConstraints = false
        ViewInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ViewInfo.topAnchor.constraint(equalTo: view.topAnchor, constant: 358).isActive = true
        ViewInfo.heightAnchor.constraint(equalToConstant: 442).isActive = true
        ViewInfo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        ViewInfo.widthAnchor.constraint(equalToConstant: 360).isActive = true
        ViewInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        ViewInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0).isActive = true
        
    }
    private func initUI(){
        view.backgroundColor = .systemBlue
        ViewInfo.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        NextButton.centerXAnchor.constraint(equalTo: ViewInfo.centerXAnchor).isActive = true
        NextButton.heightAnchor.constraint(equalToConstant: 16).isActive = true
        NextButton.bottomAnchor.constraint(equalTo: ViewInfo.bottomAnchor, constant: -98).isActive = true
        NextButton.widthAnchor.constraint(equalToConstant: 210).isActive = true
        NextButton.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor, constant: -94).isActive = true
        NextButton.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor, constant: 98).isActive = true
        
        
        
        //добавил фото через frame
        if let image = UIImage(named: "personImage") {
            imageView.image = image
            
            imageView.frame = CGRect(x: 10, y: 30, width: 350, height: 256)
            
            view.addSubview(imageView)
        }
    }
    private func initUI2(){
        ViewInfo.addSubview(ControlButton)
        
        ControlButton.translatesAutoresizingMaskIntoConstraints = false
        ControlButton.centerXAnchor.constraint(equalTo: ViewInfo.centerXAnchor).isActive = true
        ControlButton.topAnchor.constraint(equalTo: ViewInfo.topAnchor, constant: 294).isActive = true
        ControlButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        ControlButton.bottomAnchor.constraint(equalTo: ViewInfo.bottomAnchor, constant: -200).isActive = true
        ControlButton.widthAnchor.constraint(equalToConstant: 168).isActive = true
        ControlButton.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor, constant: 98).isActive = true
        ControlButton.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor, constant: -94).isActive = true
        
        
        
    }
    private func configureNameTF(){
        ViewInfo.addSubview(NameTF)
        NameTF.translatesAutoresizingMaskIntoConstraints = false
        NameTF.centerXAnchor.constraint(equalTo: ViewInfo.centerXAnchor).isActive = true
        NameTF.topAnchor.constraint(equalTo: ViewInfo.topAnchor, constant: 71).isActive = true
        NameTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
        //.bottomAnchor.constraint(equalTo: ViewInfo.bottomAnchor, constant: -200).isActive = true
        NameTF.widthAnchor.constraint(equalToConstant: 149).isActive = true
        NameTF.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor, constant: 23).isActive = true
        NameTF.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor, constant: -23).isActive = true
        
        
    }
    private func initAction() {
        NextButton.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        
    }
    @objc func goToNextPage(_ sender: UIButton){
        let vc = SecondViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .partialCurl
        present(vc, animated: true)
    }
    private func initActionTF() {
        ControlButton.addTarget(self, action: #selector(control), for: .touchUpInside)
        
    }
    @objc func control(_ sender: UIButton) {
        if NameTF.text?.isEmpty ?? true {
            
            NameTF.layer.borderColor = UIColor.red.cgColor
            NameTF.layer.borderWidth = 2
            NameTF.placeholder = "Fill the field"
        }
    }
        private func configureDivider() {
            ViewInfo.addSubview(divider)
            divider.backgroundColor = .black
            divider.translatesAutoresizingMaskIntoConstraints = false
            divider.centerXAnchor.constraint(equalTo: ViewInfo.centerXAnchor).isActive = true
            divider.topAnchor.constraint(equalTo: NameTF.topAnchor, constant: 20).isActive = true
            divider.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor, constant: 20).isActive = true
            divider.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor, constant: -20).isActive = true
            divider.heightAnchor.constraint(equalToConstant: 4).isActive = true
            
        }
    }

