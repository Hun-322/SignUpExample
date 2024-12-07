//
//  HomeMainView.swift
//  SignUpExample
//
//  Created by KSH on 12/5/24.
//

import UIKit

final class HomeMainView: UIView {
    
    // MARK: - Properties
    
    private let logoView = AppLogoView()
    
    // MARK: - initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(logoView)
    }
    
    private func setupUI() {
        self.backgroundColor = .white
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 48),
            logoView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 124)
        ])
    }
}
