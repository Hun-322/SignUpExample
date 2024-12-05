//
//  HomeViewController.swift
//  SignUpExample
//
//  Created by KSH on 12/5/24.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    private let rootView: UIView
    
    init(rootView: UIView) {
        self.rootView = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
    }
}

