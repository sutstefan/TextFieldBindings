//
//  BindingTextField.swift
//  TextFieldBindings
//
//  Created by Stefan Sut on 11/28/17.
//  Copyright © 2017 Stefan Sut. All rights reserved.
//

import UIKit

class BindingTextField: UITextField {
    
    // MARK: Public
    
    var textChanged: ((_ text: String?) -> ())?
    
    func bind(callback: @escaping (_ text: String?) -> ()) {
        textChanged = callback
        addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    // MARK: Private
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        textChanged?(textField.text)
    }
    
}
