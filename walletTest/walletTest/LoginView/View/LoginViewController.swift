//
//  ViewController.swift
//  walletTest
//
//  Created by admin on 13.06.2022.
//

import UIKit

protocol LoginViewProtocol: AnyObject {
    
}

class LoginViewController: UIViewController {

    var presenter: LoginPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LoginPresenter(view: self)
    }

    @IBAction func signInBtnTapped(_ sender: Any) {
        createContainerVC()
    }
    
    @IBAction func createAccountBtn(_ sender: Any) {
        createContainerVC()
    }
    
    private func createContainerVC() {
        let vc = ContainerViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        present(vc, animated: true)
    }
    
}

extension LoginViewController: LoginViewProtocol {
    
}
