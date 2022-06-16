//
//  HomePresenter.swift
//  walletTest
//
//  Created by admin on 14.06.2022.
//

import Foundation

protocol HomePresenterProtocol {
    init(view: HomeViewProtocol)
    func addBalance()
}

class HomePresenter: HomePresenterProtocol {
    
    unowned let view: HomeViewProtocol
    
    required init(view: HomeViewProtocol) {
        self.view = view
    }
    
    func addBalance() {
        let massage = "Added cash"
        view.showBalance(massage: massage)
    }
    
}
