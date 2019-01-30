//
//  TransparentTF.swift
//  TransparentTF
//
//  Created by Naveen Magatala on 1/16/19.
//  Copyright © 2019 Naveen Magatala. All rights reserved.
//

import UIKit

open class TransparentTF: UIView, NibLoadable {
    
    @IBOutlet public weak var textField: PaddedTextField!
    
    @IBOutlet weak var fieldDivider: UIView!
    
    var nextTextField: UITextField?
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
        textField.delegate = self
    }
    
    @IBAction func editingBegin(_ sender: Any) {
        fieldDivider.backgroundColor = .green
    }
    
    @IBAction func editingEnd(_ sender: Any) {
        fieldDivider.backgroundColor = .white
    }
    
    public func configure(leftImage: UIImage? = nil,
                   rightImage: UIImage? = nil,
                   placeHolder: String? = nil,
                   nextTextField: TransparentTF? = nil) {
        textField.leftViewMode = .always
        textField.leftView = UIImageView(image: leftImage)
        
        textField.rightViewMode = .always
        textField.rightView = UIImageView(image: rightImage)
        
        textField.placeholder = placeHolder
        self.nextTextField = nextTextField?.textField
    }
}

extension TransparentTF: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        nextTextField?.becomeFirstResponder()
        return true
    }
}
