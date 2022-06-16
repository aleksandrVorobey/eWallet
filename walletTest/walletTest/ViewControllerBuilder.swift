//
//  ModuleBuilder.swift
//  walletTest
//
//  Created by admin on 14.06.2022.
//

import Foundation
import UIKit

class ViewControllerBuilder {
    
    static func createViewController(viewControllerId: String) -> UIViewController {
        var controller: UIViewController!
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        controller = storyboard.instantiateViewController(withIdentifier: viewControllerId)
        return controller
    }
}
