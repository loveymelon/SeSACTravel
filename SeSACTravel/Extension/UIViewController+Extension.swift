//
//  UIViewController+Extension.swift
//  SeSACTravel
//
//  Created by 김진수 on 1/15/24.
//

import Foundation
import UIKit

extension UIViewController: ReusableProtocol {
    static var identifier: String {
        return String(describing: self)
    }
}
