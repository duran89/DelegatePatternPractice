//
//  EditProfileViewController.swift
//  DelegatePatternPractice
//
//  Created by 권정근 on 3/18/24.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    // changeNameDelegate 프로토콜 타입의 delegate 선언
    var delegate: changeNameDelegate?
    
    var editView = EditView()
    
    var changedName: String = ""

    
    override func loadView() {
        self.view = editView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        editView.editButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        changedName = editView.nameTextField.text ?? "잘못입력"
        
        // delegate.changName으로 구현한다. 
        delegate?.changeName(name: changedName)
        dismiss(animated: true)
    }

}
