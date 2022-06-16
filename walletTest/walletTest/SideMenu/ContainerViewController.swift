//
//  ContainerViewController.swift
//  walletTest
//
//  Created by admin on 16.06.2022.
//

import UIKit

protocol ContainerViewControllerDelegate {
    func togleMenu()
}

class ContainerViewController: UIViewController, ContainerViewControllerDelegate {

    var controller: UIViewController!
    var menuViewController: UIViewController!
    var isMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureHomeViewController()
    }

    func configureHomeViewController() {
        let homeVC = ViewControllerBuilder.createViewController(viewControllerId: "HomeViewController") as! HomeViewController
        homeVC.delegate = self
        controller = homeVC
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    func configureMenuViewController() {
        if menuViewController == nil {
            let menuVC = ViewControllerBuilder.createViewController(viewControllerId: "MenuViewController") as! MenuViewController
            menuVC.delegate = self
            menuViewController = menuVC
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
        }
    }
    
    func showMenuViewController(shouldMove: Bool) {
        if shouldMove {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0) {
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 20
            }

        } else {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.9,
                           initialSpringVelocity: 0) {
                self.controller.view.frame.origin.x = 0
            }
        }
    }
    
    //MARK: - ContainerViewControllerDelegate
    func togleMenu() {
        configureMenuViewController()
        isMove = !isMove
        showMenuViewController(shouldMove: isMove)
    }
    
}
