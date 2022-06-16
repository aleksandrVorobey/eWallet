//
//  UIViewController+Extension.swift
//  walletTest
//
//  Created by admin on 16.06.2022.
//

import Foundation
import UIKit

extension UIViewController {
    static func createViewController(viewControllerId: String) -> UIViewController {
        var controller: UIViewController!
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        controller = storyboard.instantiateViewController(withIdentifier: viewControllerId)
        return controller
    }
}
