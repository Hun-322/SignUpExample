//
//  LogoView.swift
//  SignUpExample
//
//  Created by KSH on 12/7/24.
//

import UIKit

final class AppLogoView: UIView {
    
    // MARK: - UI
    
    private let appLogoImageView: UIImageView = {
        let logo = UIImageView()
        logo.image = .appLogo
        return logo
    }()
    
    // MARK: - initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    
    private func addSubviews() {
        addSubview(appLogoImageView)
    }
    
    private func setupUI() {
        appLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            appLogoImageView.topAnchor.constraint(equalTo: self.topAnchor),
            appLogoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 64),
            appLogoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -64),
            appLogoImageView.heightAnchor.constraint(equalTo: appLogoImageView.widthAnchor, multiplier: 0.5)
        ])
    }
}
