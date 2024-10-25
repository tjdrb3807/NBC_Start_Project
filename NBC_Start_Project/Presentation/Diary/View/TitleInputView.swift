//
//  titleInputView.swift
//  NBC_Start_Project
//
//  Created by 전성규 on 10/25/24.
//

import UIKit

final class TitleInputView: UIStackView {
    private lazy var leadingSpacingView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10.0
        
        return stackView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "제목"
        label.textColor = .systemGray
        label.font = UIFont(name: "", size: 12.0)
        label.backgroundColor = .blue
        
        return label
    }()
    
    private lazy var titleTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.backgroundColor = .systemGray
        textField.layer.cornerRadius = 15.0
        textField.clipsToBounds = true
        
        
        return textField
    }()
    
    private lazy var trailingSpacingView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        axis = .horizontal
        alignment = .fill
        
        [leadingSpacingView, contentStackView, trailingSpacingView].forEach { addArrangedSubview($0) }
        
        leadingSpacingView.backgroundColor = .red
        leadingSpacingView.translatesAutoresizingMaskIntoConstraints = false
        leadingSpacingView.widthAnchor.constraint(equalToConstant: 20.0).isActive = true
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        [descriptionLabel, titleTextField].forEach { contentStackView.addArrangedSubview($0) }
        
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        titleTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        
        trailingSpacingView.backgroundColor = .red
        trailingSpacingView.translatesAutoresizingMaskIntoConstraints = false
        trailingSpacingView.widthAnchor.constraint(equalToConstant: 20.0).isActive = true
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#if DEBUG

import SwiftUI

struct TitleInputView_Previews: PreviewProvider {
    static var previews: some View {
        TitleInputView_Presentalbe()
            .frame(
                width: UIScreen.main.bounds.width,
                height: 80.0,
                alignment: .center)
    }
    
    struct TitleInputView_Presentalbe: UIViewRepresentable {
        func makeUIView(context: Context) -> some UIView { TitleInputView() }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {}
    }
}

#endif
