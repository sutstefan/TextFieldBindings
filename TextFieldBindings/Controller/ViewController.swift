//
//  ViewController.swift
//  TextFieldBindings
//
//  Created by Stefan Sut on 11/28/17.
//  Copyright © 2017 Stefan Sut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: Outlet
    
    @IBOutlet private weak var textField: BindingTextField!

    // MARK: Private
    
    private var changedValue: String? {
        didSet {
            print("Changed value: \(String(describing: changedValue))")
        }
    }
    
    private func setupView() {
        setupTextField()
    }
    
    private func setupTextField() {
        textField.bind { [weak self] (text) in
            guard let strongSelf = self else { return }
            strongSelf.changedValue = text
        }
    }
   
}

