//
//  ViewController.swift
//  DelegatePatternPractice
//
//  Created by 권정근 on 3/18/24.
//

import UIKit

class ProfileViewController: UIViewController, changeNameDelegate {
    
    
    // changeNameDelegate의 프로토콜의 함수를 구체화한다.
    func changeName(name: String) {
        profileView.nameTextField.text = name
    }
    
    var profileView = ProfileView()
    
    override func loadView() {
        self.view = profileView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        profileView.editButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        let editVC = EditProfileViewController()
        editVC.modalPresentationStyle = .fullScreen
        
        // editVC의 대리자를 changeNameDelegate 프로토콜을 채택한 ProfileViewController로 선언한다.
        editVC.delegate = self
    
        present(editVC, animated: true)
    }
}

