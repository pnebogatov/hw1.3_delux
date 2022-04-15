//
//  LogInViewController.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 10.04.2022.
//

import UIKit

class LogInViewController: UIViewController {


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let scrollView = UIScrollView()
            view.addSubview(scrollView)
            scrollView.alwaysBounceVertical = false // хз полностю код сам сделал а это списал, когда попросил помощи , когда затупил со скроллом
        
        let contentView = UIView()
            view.addSubview(contentView)
            
        
        let logoVK = UIImageView()
            view.addSubview(logoVK)
            logoVK.image = UIImage(named: "logo")
            logoVK.contentMode = .scaleAspectFit
            logoVK.translatesAutoresizingMaskIntoConstraints = false
        
        let emailText = UITextField()
            view.addSubview(emailText)
            emailText.translatesAutoresizingMaskIntoConstraints = false
            emailText.layer.borderColor = UIColor.lightGray.cgColor
            emailText.layer.borderWidth = 0.5
            emailText.layer.cornerRadius = 10
            emailText.backgroundColor = .systemGray6
            emailText.layer.maskedCorners = [.layerMinXMinYCorner , .layerMaxXMinYCorner]
            emailText.placeholder = "   Email of phone"
            emailText.autocapitalizationType = .none
            emailText.textColor = .black
            emailText.font = UIFont.systemFont(ofSize: 16)
        
        let passText = UITextField()
            view.addSubview(passText)
            passText.translatesAutoresizingMaskIntoConstraints = false
            passText.layer.borderColor = UIColor.lightGray.cgColor
            passText.layer.borderWidth = 0.5
            passText.layer.cornerRadius = 10
            passText.backgroundColor = .systemGray6
            passText.layer.maskedCorners = [.layerMinXMaxYCorner , .layerMaxXMaxYCorner]
            passText.placeholder = "   Password"
            passText.isSecureTextEntry = true
            passText.autocapitalizationType = .none
            passText.textColor = .black
            passText.font = UIFont.systemFont(ofSize: 16)
        
        
        let button = UIButton()
            view.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Log In", for: .normal)
            button.setTitleColor(UIColor.white, for: .normal)
            button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
            button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        [
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            
            logoVK.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            logoVK.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoVK.widthAnchor.constraint(equalToConstant: 100),
            logoVK.heightAnchor.constraint(equalToConstant: 100),
        
            emailText.topAnchor.constraint(equalTo: logoVK.bottomAnchor, constant: 120),
            emailText.heightAnchor.constraint(equalToConstant: 50),
            emailText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            passText.topAnchor.constraint(equalTo: emailText.bottomAnchor),
            passText.heightAnchor.constraint(equalToConstant: 50),
            passText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            button.topAnchor.constraint(equalTo: passText.bottomAnchor, constant: 16),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 50)
            
        
        ].forEach{$0.isActive = true}
    
        
        configureUI()
        
    }
    
    @objc func tap(){
        let vc = ProfileViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
 
    func configureUI() {
        let hideKeyboard = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideKeyboard)
    }
}

