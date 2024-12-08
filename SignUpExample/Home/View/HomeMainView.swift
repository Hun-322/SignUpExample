//
//  HomeMainView.swift
//  SignUpExample
//
//  Created by KSH on 12/5/24.
//

import UIKit

final class HomeMainView: UIView {
    
    // MARK: - Properties
    
    private let appLogoView = AppLogoView()
    private let loginInputView = LoginInputView()
    
    // MARK: - initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    
    private func addSubviews() {
        addSubview(appLogoView)
        addSubview(loginInputView)
    }
    
    private func setupLayout() {
        self.backgroundColor = .white
        appLogoView.translatesAutoresizingMaskIntoConstraints = false
        loginInputView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            appLogoView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 48),
            appLogoView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            appLogoView.heightAnchor.constraint(equalToConstant: 124),
            
            loginInputView.topAnchor.constraint(equalTo: self.appLogoView.bottomAnchor, constant: 32),
            loginInputView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            loginInputView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18),
        ])
    }
}
