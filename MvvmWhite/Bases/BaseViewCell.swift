//
//  BaseViewCell.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 02/11/2021.
//

import Foundation


public protocol BaseViewCell{
 associatedtype Model
    func bind( _ model : Model)
}
