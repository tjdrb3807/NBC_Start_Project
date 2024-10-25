//
//  DiaryViewController.swift
//  NBC_Start_Project
//
//  Created by 전성규 on 10/25/24.
//

import UIKit

final class DiaryViewController: UIViewController {
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.indicatorStyle = .black
        
        return scrollView
    }()
    
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 20.0
        
        return stackView
    }()
    
    private lazy var spacingView: UIView = { UIView() }()
    
    private lazy var titleInputView: TitleInputView = { TitleInputView() }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        self.configScrollView()
        self.configContentStakcView()
        self.configSpacingView()
    }
    
    private func configScrollView() {
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func configContentStakcView() {
        scrollView.addSubview(contentStackView)
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        contentStackView.topAnchor.constraint(equalTo: self.scrollView.topAnchor).isActive = true
        contentStackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor).isActive = true
        contentStackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true
        contentStackView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor).isActive = true
        contentStackView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor, multiplier: 1.0).isActive = true
        
        [titleInputView].forEach { contentStackView.addArrangedSubview($0) }
    }
    
    private func configSpacingView() {
        contentStackView.addArrangedSubview(spacingView)
        spacingView.translatesAutoresizingMaskIntoConstraints = false
        spacingView.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
    }
}

#if DEBUG

import SwiftUI

struct DiaryViewController_Previews: PreviewProvider {
    static var previews: some View {
        DiaryViewController_Presentable()
    }
    
    struct DiaryViewController_Presentable: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> some UIViewController {
            return DiaryViewController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    }
}

#endif
