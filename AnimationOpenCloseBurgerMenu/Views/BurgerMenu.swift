//
//  BurgerMenu.swift
//  AnimationOpenCloseBurgerMenu
//
//  Created by Kirill Khomytsevych on 19.06.2023.
//

import UIKit

final class BurgerMenu: UIView {

    // MARK: - Private UI elements
    private let upRectangel = Rectangel()
    private let middleRectangel = Rectangel()
    private let downRectangel = Rectangel()

    // MARK: - Private constants
    private let widthRectangel = 100
    private let heightRectangel = 20
    private let marginY = 4
    private let duration = 0.8
    private let middleHeghtView = 40

    // MARK: - Life cycle
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

// MARK: - External Methods
extension BurgerMenu {

    func openMenu() {
        UIView.animate(withDuration: duration) {
            // UpRectangel
            self.upRectangel.frame = CGRect(x: .zero, y: self.middleHeghtView, width: self.widthRectangel, height: self.heightRectangel)
            self.upRectangel.transform = CGAffineTransform(rotationAngle: .pi / 4)

            // MiddleRectangel
            self.middleRectangel.frame.size = CGSize(width: .zero, height: self.heightRectangel)
            self.middleRectangel.frame.origin = CGPoint(x: self.widthRectangel, y: 2 * self.heightRectangel)

            // DownRectangel
            self.downRectangel.frame = CGRect(x: .zero, y: self.middleHeghtView, width: self.widthRectangel, height: self.heightRectangel)
            self.downRectangel.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        }
    }

    func closeMenu() {
        UIView.animate(withDuration: duration) {
            // UpRectangel
            self.upRectangel.transform = CGAffineTransform(rotationAngle: .pi * 4)
            self.upRectangel.frame = CGRect(x: .zero, y: .zero, width: self.widthRectangel, height: self.heightRectangel)

            // MiddleRectangel
            self.middleRectangel.frame.size = CGSize(width: self.widthRectangel, height: self.heightRectangel)
            self.middleRectangel.frame = CGRect(x: .zero, y: self.heightRectangel + self.marginY, width: self.widthRectangel, height: self.heightRectangel)

            // DownRectangel
            self.downRectangel.transform = CGAffineTransform( rotationAngle: -.pi * 4)
            self.downRectangel.frame = CGRect(x: .zero, y: 2 * (self.heightRectangel + self.marginY), width: self.widthRectangel, height: self.heightRectangel)
        }
    }

}

// MARK: - private extension
private extension BurgerMenu {

    func setupView() {
        setupAddSubview()
        setupFrame()
    }

    func setupAddSubview() {
        addSubview(upRectangel)
        addSubview(middleRectangel)
        addSubview(downRectangel)
    }

    func setupFrame() {
        upRectangel.frame = CGRect(x: .zero, y: .zero, width: widthRectangel, height: heightRectangel)
        middleRectangel.frame = CGRect(x: .zero, y: heightRectangel + marginY, width: widthRectangel, height: heightRectangel)
        downRectangel.frame = CGRect(x: .zero, y: 2 * (heightRectangel + marginY), width: widthRectangel, height: heightRectangel)
    }

}
