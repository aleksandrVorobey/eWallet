//
//  LoginPresenter.swift
//  walletTest
//
//  Created by admin on 14.06.2022.
//

import Foundation

protocol LoginPresenterProtocol: AnyObject {
    init(view: LoginViewProtocol)
}

class LoginPresenter: LoginPresenterProtocol {
    
    unowned let view: LoginViewProtocol
    
    required init(view: LoginViewProtocol) {
        self.view = view
    }
}
