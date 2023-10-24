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
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.backgroundColor = .white
        label.textColor = .black
        label.layer.cornerRadius = 8
        return label
    }()
    private let PasswordTF : UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.font = .systemFont(ofSize: 16, weight: .regular)
        password.backgroundColor = .white
        password.textColor = .black
        password.layer.cornerRadius = 8
        return password
    }()
    private let textWelcome: UILabel = {
        let welcomeLbl = UILabel()
        welcomeLbl.translatesAutoresizingMaskIntoConstraints = false
        welcomeLbl.text = "Welcome Back"
        welcomeLbl.font = .systemFont(ofSize: 34, weight: .bold)
        welcomeLbl.textColor = .white
        return welcomeLbl
    }()
    private let textSignin: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign in to continue"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textColor = UIColor(red: 178/255, green: 215/255, blue: 225/255, alpha: 1)
        return label
    }()
    private let EmailLbl: UILabel = {
        let  emailLbl = UILabel()
        emailLbl.translatesAutoresizingMaskIntoConstraints = false
        emailLbl.text = "Employee Id / Email"
        emailLbl.textColor = .systemGray
        emailLbl.font = .systemFont(ofSize: 12, weight: .medium)
        return emailLbl
    }()
    private let passwordLbl: UILabel = {
        let  password = UILabel()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.text = "Password"
        password.textColor = .systemGray
        password.font = .systemFont(ofSize: 12, weight: .medium)
        return password
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
    private let imageNature : UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "NatureImage")
        return view
    }()
    
    private let imageView = UIImageView()
    
    private let divider = UIView()
    
    private let divider2 = UIView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        initUI2()
        installView()
        initAction()
        initActionTFPassword()
        configureNameTF()
        initActionTF()
        configureDivider()
        configurePasswordTF()
        ConfigureWelcome()
        configureSignLabel()
        configureEmployee()
        configurePasswordLbl()
        configureDivider2()
        configureImageNature()
        
    }
    private func installView() {
        view.addSubview(ViewInfo)
        ViewInfo.translatesAutoresizingMaskIntoConstraints = false
        ViewInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ViewInfo.topAnchor.constraint(equalTo: view.topAnchor, constant: 358).isActive = true
        ViewInfo.heightAnchor.constraint(equalToConstant: 442).isActive = true
        ViewInfo.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        ViewInfo.widthAnchor.constraint(equalToConstant: 360).isActive = true
        ViewInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        ViewInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
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
    private func configurePasswordTF(){
        ViewInfo.addSubview(PasswordTF)
        PasswordTF.translatesAutoresizingMaskIntoConstraints = false
        PasswordTF.centerXAnchor.constraint(equalTo: ViewInfo.centerXAnchor).isActive = true
        PasswordTF.topAnchor.constraint(equalTo: ViewInfo.topAnchor, constant: 155).isActive = true
        PasswordTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
        PasswordTF.widthAnchor.constraint(equalToConstant: 74).isActive = true
        PasswordTF.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor, constant: 23).isActive = true
        PasswordTF.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor, constant: -23).isActive = true
    }
    private func ConfigureWelcome(){
        view.addSubview(textWelcome)
        textWelcome.translatesAutoresizingMaskIntoConstraints = false
        textWelcome.topAnchor.constraint(equalTo: view.topAnchor, constant: 273).isActive = true
        textWelcome.heightAnchor.constraint(equalToConstant: 48).isActive = true
        textWelcome.widthAnchor.constraint(equalToConstant: 226).isActive = true
        textWelcome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textWelcome.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -119).isActive = true
    }
    private func configureSignLabel(){
        view.addSubview(textSignin)
        textSignin.translatesAutoresizingMaskIntoConstraints = false
        textSignin.topAnchor.constraint(equalTo: textWelcome.topAnchor, constant: 40).isActive = true
        textSignin.heightAnchor.constraint(equalToConstant: 48).isActive = true
        textSignin.widthAnchor.constraint(equalToConstant: 226).isActive = true
        textSignin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textSignin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -119).isActive = true
    }
    private func configureEmployee(){
        view.addSubview(EmailLbl)
        EmailLbl.translatesAutoresizingMaskIntoConstraints = false
        EmailLbl.topAnchor.constraint(equalTo: ViewInfo.topAnchor, constant: 43).isActive = true
        EmailLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        EmailLbl.widthAnchor.constraint(equalToConstant: 193).isActive = true
        EmailLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        EmailLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -144).isActive = true
    }
    private func configurePasswordLbl(){
        view.addSubview(passwordLbl)
        passwordLbl.translatesAutoresizingMaskIntoConstraints = false
        passwordLbl.topAnchor.constraint(equalTo: ViewInfo.topAnchor, constant: 130).isActive = true
        passwordLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        passwordLbl.widthAnchor.constraint(equalToConstant: 54).isActive = true
        passwordLbl.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor, constant: 23).isActive = true
        passwordLbl.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor, constant: -283).isActive = true
    }
    private func configureImageNature() {
        ViewInfo.addSubview(imageNature)
        imageNature.topAnchor.constraint(equalTo: ViewInfo.topAnchor, constant: 340).isActive = true
        imageNature.heightAnchor.constraint(equalToConstant: 132).isActive = true
        imageNature.widthAnchor.constraint(equalToConstant: 375).isActive = true
        imageNature.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor).isActive = true
        imageNature.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor).isActive = true
        imageNature.bottomAnchor.constraint(equalTo: ViewInfo.bottomAnchor).isActive = true
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
            NameTF.layer.borderWidth = 3
            NameTF.placeholder = "Fill the field"
        }
    }
        private func initActionTFPassword() {
            ControlButton.addTarget(self, action: #selector(control1), for: .touchUpInside)
            
        }
        @objc func control1(_ sender: UIButton) {
            if PasswordTF.text?.isEmpty ?? true {
                
                PasswordTF.layer.borderColor = UIColor.red.cgColor
                PasswordTF.layer.borderWidth = 3
                PasswordTF.placeholder = "Fill the field"
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
        private func configureDivider2() {
            ViewInfo.addSubview(divider2)
            divider2.backgroundColor = .black
            divider2.translatesAutoresizingMaskIntoConstraints = false
            divider2.centerXAnchor.constraint(equalTo: ViewInfo.centerXAnchor).isActive = true
            divider2.topAnchor.constraint(equalTo: PasswordTF.topAnchor, constant: 20).isActive = true
            divider2.leadingAnchor.constraint(equalTo: ViewInfo.leadingAnchor, constant: 20).isActive = true
            divider2.trailingAnchor.constraint(equalTo: ViewInfo.trailingAnchor, constant: -20).isActive = true
            divider2.heightAnchor.constraint(equalToConstant: 4).isActive = true
            
        }
    }
    

