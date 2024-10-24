//
//  MainViewNameSpace.swift
//  NBC_Start_Project
//
//  Created by 전성규 on 10/25/24.
//

import UIKit

enum MainViewNameSpace {
    /// 10.0
    static let collectionViewLineSpacing: CGFloat = 10.0
    /// 10.0
    static let collectionViewInteritemSpacing: CGFloat = 10.0
    /// 10.0
    static let collectionViewSectionInset: CGFloat = 10.0
    /// (화면 프레임 / 2) - (Cell 간격 + (섹션 인센 / 2))
    static let collectionViewCellWidthAndHeight: CGFloat = (UIScreen.main.bounds.width / 2.0) - (collectionViewInteritemSpacing + (collectionViewSectionInset / 2.0))
    /// 0.5
    static let collectionViewBGColorAlpha: CGFloat = 0.5
    ///  "image_main_background"
    static let backgroundImageStr: String = "image_main_background"
    /// "내배캠 시작"
    static let NVTitle: String = "내배캠 시작"
}
