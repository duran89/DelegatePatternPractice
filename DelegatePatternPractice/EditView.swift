//
//  ProfileView.swift
//  DelegatePatternPractice
//
//  Created by 권정근 on 3/18/24.
//

import UIKit

class EditView: UIView {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "이름"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .label
        label.textAlignment = .center
        
        return label
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "이름을 입력해주세요"
        tf.borderStyle = .roundedRect
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.textColor = .label
        return tf
    }()
    
    let editButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("수정", for: .normal)
        button.tintColor = .label
        button.backgroundColor = .systemGray
        button.frame.size.height = 50
        return button
    }()
    
    let stackView: UIStackView = {
        let st = UIStackView()
        st.translatesAutoresizingMaskIntoConstraints = false
        st.axis = .vertical
        st.spacing = 10
        st.distribution = .fill
        st.alignment = .fill
        return st
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(editButton)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        
        let stackViewConstraints = [
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(stackViewConstraints)
    }
}
