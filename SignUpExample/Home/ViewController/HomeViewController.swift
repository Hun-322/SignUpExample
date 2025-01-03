//
//  HomeViewController.swift
//  SignUpExample
//
//  Created by KSH on 12/5/24.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    private let rootView: HomeMainView
    
    // MARK: - initialize
    
    init() {
        self.rootView = HomeMainView()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("소스트리 연결 테스트")
    }
    
    override func loadView() {
        self.view = rootView
    }
}

