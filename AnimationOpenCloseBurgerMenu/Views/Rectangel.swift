//
//  Rectangel.swift
//  AnimationOpenCloseBurgerMenu
//
//  Created by Kirill Khomytsevych on 19.06.2023.
//

import UIKit

final class Rectangel: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .black
        layer.cornerRadius = 6.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
