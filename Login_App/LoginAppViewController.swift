//
//  ViewController.swift
//  Login_App
//
//  Created by Бектур Дуйшембеков on 12/27/23.
//

import UIKit

class PaddedTextField: UITextField {
    
    let textPadding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.placeholderRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
}

class LoginAppViewController: UIViewController {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    lazy var loginAppLogo: UIImageView = {
        let image = UIImage(named: "LoginAppLogo")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    lazy var loginAppTitle: UILabel = {
        let title = UILabel()
        title.text = "Welcome back! Glad to see you, Again!"
        title.numberOfLines = 2
        title.font = UIFont(name: "Urbanist-Bold", size: 30)
        return title
    }()
    
    lazy var inputOfMail: UITextField = {
        let input = PaddedTextField()
        input.layer.cornerRadius = 8
        input.backgroundColor = UIColor(red: 232.0/255.0, green: 236.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        input.layer.borderWidth = 1
        input.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        let placeholderText = NSAttributedString(string: "Enter your email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        input.attributedPlaceholder = placeholderText
        return input
    }()
    
    lazy var inputOfPassword: UITextField = {
        let input = UITextField()
        input.layer.cornerRadius = 8
        input.backgroundColor = UIColor(red: 232.0/255.0, green: 236.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        input.layer.borderWidth = 1
        input.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        let placeholderText = NSAttributedString(string: "Enter your password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        input.attributedText = placeholderText
        return input
    }()
    
    lazy var forgotPassword: UILabel = {
        let text = UILabel()
        text.text = "Forgot Password?"
        text.font = UIFont(name: "Urbanist-SemiBold", size: 14)
        text.textColor = UIColor(red: 106.0/255.0, green:  112/255.0,blue: 124.0/255.0, alpha: 1.0)
        return text
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        button.layer.cornerRadius = 8
        return button
    }()
    
    lazy var registerAccount: UILabel = {
        let text = UILabel()
        text.text = "Don’t have an account? Register Now"
        text.font = UIFont(name: "Urbanist-Bold", size: 15)
        text.textColor = .black
        return text
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpConstraints()
    }
    
    func setUpConstraints() {
        
        //LoginApp ImageLogo
        view.addSubview(loginAppLogo)
        loginAppLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginAppLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginAppLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200)
        ])
        
        //LoginApp Title
        view.addSubview(loginAppTitle)
        loginAppTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginAppTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginAppTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginAppTitle.widthAnchor.constraint(equalToConstant: 280),
            loginAppTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22)
        ])
        
        //LoginApp TextField for Email
        view.addSubview(inputOfMail)
        inputOfMail.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            inputOfMail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            inputOfMail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            inputOfMail.heightAnchor.constraint(equalToConstant: 56),
            inputOfMail.topAnchor.constraint(equalTo: loginAppTitle.bottomAnchor, constant: 32)
        ])
        
        //LoginApp TextField for Password
        view.addSubview(inputOfPassword)
        inputOfPassword.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            inputOfPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            inputOfPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            inputOfPassword.heightAnchor.constraint(equalToConstant: 56),
            inputOfPassword.topAnchor.constraint(equalTo: loginAppTitle.bottomAnchor, constant: 103)
        ])
        
        //LoginApp Forgot Password
        view.addSubview(forgotPassword)
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            forgotPassword.topAnchor.constraint(equalTo: inputOfPassword.bottomAnchor, constant: 15),
            forgotPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
        ])
        
        //LoginApp Login Button
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: inputOfPassword.bottomAnchor, constant: 62),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            loginButton.heightAnchor.constraint(equalToConstant: 56),
        ])
        
        //LoginApp Register Account
        view.addSubview(registerAccount)
        registerAccount.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            registerAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25)
        ])
        
    }

}

