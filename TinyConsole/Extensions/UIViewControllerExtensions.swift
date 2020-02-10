//
//  UIViewControllerExtensions.swift
//  TinyConsole
//
//  Created by Devran on 30.09.19.
//

import UIKit

internal extension UIViewController {
    func removeAllChildren() {
        childViewControllers.forEach {
            $0.willMove(toParentViewController: nil)
        }
        
        for view in view.subviews {
            view.removeFromSuperview()
        }
        childViewControllers.forEach {
            $0.removeFromParentViewController()
        }
    }
}
