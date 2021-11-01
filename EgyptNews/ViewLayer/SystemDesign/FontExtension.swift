//
//  Fonts.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 02/11/2021.
//

import Foundation
import UIKit

//GraphikArabic-Light
//GraphikArabic-Bold

extension UIFont{
    
    public enum GraphikArabicType : String{
        case regular = "Graphik-Regular"
        case light = "GraphikArabic-Light"
        case bold = "GraphikArabic-Bold"
    }
    
    public static func GraphikArabic ( _ type: GraphikArabicType = .light,_ size: CGFloat = systemFontSize ) -> UIFont{
        return UIFont(name: type.rawValue, size: size) ?? systemFont(ofSize: size)
    }
}
