//
//  LoginInputView.swift
//  SignUpExample
//
//  Created by KSH on 12/7/24.
//

import UIKit

final class LoginInputView: UIView {
    
    // MARK: - UI
    
    private lazy var idTextField: UITextField = {
        return buildTextField(placeholder: "아이디를 입력해 주세요")
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = buildTextField(placeholder: "비밀번호를 입력해 주세요", isSecure: true)
        textField.rightView = passwordVisibilityButton
        textField.rightViewMode = .whileEditing
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        return textField
    }()
    
    private lazy var passwordVisibilityButton: UIButton = {
        let button = UIButton()
        button.setImage(.eyeSlash, for: .normal)
        button.addAction(
            UIAction(handler: { [weak self] _ in
                self?.togglePasswordVisibility()
            }),
            for: .touchUpInside
        )
        button.isHidden = true
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [idTextField, passwordTextField, loginButton])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.setCustomSpacing(12, after: passwordTextField)
        return stackView
    }()
    
    // MARK: - initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        addSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    
    private func setupUI() {
        backgroundColor = .clear
    }
    
    private func addSubviews() {
        addSubview(stackView)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            idTextField.heightAnchor.constraint(equalToConstant: 60),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            loginButton.heightAnchor.constraint(equalToConstant: 46)
        ])
    }
    
    private func buildTextField(placeholder: String, isSecure: Bool = false) -> UITextField {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [
                .foregroundColor: UIColor.lightGray,
                .font: UIFont.systemFont(ofSize: 16, weight: .semibold)
            ]
        )
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 60))
        textField.leftView = leftPaddingView
        textField.leftViewMode = .always
        textField.isSecureTextEntry = isSecure
        return textField
    }
    
    @objc private func textFieldDidChange() {
        passwordVisibilityButton.isHidden = passwordTextField.text?.isEmpty ?? true
    }
    
    private func togglePasswordVisibility() {
        passwordTextField.isSecureTextEntry.toggle()
        let buttonImageName = passwordTextField.isSecureTextEntry ? "eyeSlash" : "eye"
        passwordVisibilityButton.setImage(UIImage(named: buttonImageName), for: .normal)
    }
}
