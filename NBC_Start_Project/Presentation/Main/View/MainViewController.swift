//
//  Main.swift
//  NBC_Start_Project
//
//  Created by 전성규 on 10/25/24.
//

import UIKit

final class MainViewController: UIViewController {
    @IBOutlet weak var cardCollectionView: UICollectionView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardCollectionView.dataSource = self
        cardCollectionView.delegate = self

        self.setNVItem()
        self.setFlowLayout()
        self.setCardCollectionView()
        self.setBackgroundImageView()
        
    }
    
    private func setNVItem() {
        navigationItem.title = MainViewNameSpace.NVTitle
        
        let addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(tapAddButton))
        
        addButton.tintColor = .black
        navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func tapAddButton() {
        /// 이 부분이 정말 맘에 안들어서 이전 팀플에선 Coordinator 썻지만 시간이 없으니 Skip....
        navigationController?.pushViewController(DiaryViewController(), animated: true)
    }
    
    private func setFlowLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(
            top: MainViewNameSpace.collectionViewSectionInset,
            left: MainViewNameSpace.collectionViewSectionInset,
            bottom: MainViewNameSpace.collectionViewSectionInset,
            right: MainViewNameSpace.collectionViewSectionInset)
        
        cardCollectionView.collectionViewLayout = layout
    }
    
    private func setCardCollectionView() {
        cardCollectionView.alwaysBounceVertical = true
        cardCollectionView.showsVerticalScrollIndicator = true
        cardCollectionView.backgroundColor = .white.withAlphaComponent(MainViewNameSpace.collectionViewBGColorAlpha)
    }
    
    private func setBackgroundImageView() {
        backgroundImageView.image = UIImage(named: MainViewNameSpace.backgroundImageStr)
    }
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CardCollectionViewCellNameSpace.cellIdentifier,
            for: indexPath) as? CardCollectionViewCell else { return UICollectionViewCell() }
        
        return cell
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(
            width: MainViewNameSpace.collectionViewCellWidthAndHeight,
            height: MainViewNameSpace.collectionViewCellWidthAndHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        MainViewNameSpace.collectionViewLineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        MainViewNameSpace.collectionViewInteritemSpacing
    }
}

