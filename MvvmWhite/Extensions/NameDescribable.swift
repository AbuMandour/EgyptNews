//
//  NameDescribable.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 28/10/2021.
//

import Foundation

public protocol NameDescribable {
    var typeName: String { get }
    static var typeName: String { get }
}

public extension NameDescribable {
    var typeName: String {
        return String(describing: type(of: self))
    }

    static var typeName: String {
        return String(describing: self)
    }
}

