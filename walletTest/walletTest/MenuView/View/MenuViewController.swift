//
//  MenuViewController.swift
//  walletTest
//
//  Created by admin on 14.06.2022.
//

import UIKit

class MenuViewController: UIViewController {

    var delegate: ContainerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func closeBtnTapped(_ sender: Any) {
        delegate?.togleMenu()
    }
    
}
