//
//  Dynamic.swift
//  TextFieldBindings
//
//  Created by Stefan Sut on 11/28/17.
//  Copyright © 2017 Stefan Sut. All rights reserved.
//

import Foundation

class Dynamic<T> {
    
    var bind: ((T) -> ())?
    
    var value :T? {
        didSet {
            bind?(value!)
        }
    }
    
    init(_ v :T) {
        value = v
    }
    
}
