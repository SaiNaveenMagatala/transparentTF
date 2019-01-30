//
//  PaddedTextField.swift
//  TransparentTF
//
//  Created by Naveen Magatala on 1/17/19.
//  Copyright © 2019 Naveen Magatala. All rights reserved.
//

import UIKit

@objc open class PaddedTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.textRect(forBounds: bounds)
        rect.origin.x += 10
        return rect
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.placeholderRect(forBounds: bounds)
        rect.origin.x += 10
        return rect
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.editingRect(forBounds: bounds)
        rect.origin.x += 10
        return rect
    }
    
    override open func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.leftViewRect(forBounds: bounds)
        rect.origin.x += 5
        return rect
    }
}
