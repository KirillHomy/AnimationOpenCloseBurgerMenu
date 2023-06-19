//
//  ViewController.swift
//  AnimationOpenCloseBurgerMenu
//
//  Created by Kirill Khomytsevych on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Private UI constraints
    private let burgerMenu = BurgerMenu()

    // MARK: - Private variables
    private var isToggle = false

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupController()
    }

}

// MARK: - private extension
private extension ViewController {

    func setupController() {
        setupViewController()
        setupAddSubview()
        setupFrame()
        setupTap()
    }

    func setupViewController() {
        view.backgroundColor = .white
    }

    func setupAddSubview() {
        view.addSubview(burgerMenu)
    }

    func setupFrame() {
        burgerMenu.frame = CGRect(x: 20, y: 50, width: 100, height: 100)
    }

    func setupTap() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
        burgerMenu.addGestureRecognizer(tapGestureRecognizer)
    }

}

// MARK: - f Method
private extension ViewController {

    func setupAnimate(x: Int = 20, y: Int = 50, width: Int = 100, height: Int = 100) {
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0) {
            self.burgerMenu.frame = CGRect(x: x, y: y, width: width, height: height)
        }
    }

}

// MARK: - @objc private extension
@objc private extension ViewController {

    func didTap() {
        isToggle.toggle()
        if isToggle {
            burgerMenu.openMenu()
            setupAnimate(x: 200)
        } else {
            burgerMenu.closeMenu()
            setupAnimate()
        }
    }

}
