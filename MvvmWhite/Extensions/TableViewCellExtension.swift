//
//  TableViewCellExtension.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 28/10/2021.
//

import UIKit

extension UITableViewCell : NameDescribable{}

public extension UITableViewCell{
    
    
    static var nib : UINib {
        return UINib(nibName: self.typeName, bundle: nil)
    }
}
