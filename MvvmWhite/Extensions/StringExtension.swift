//
//  StringExtension.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation

public extension String {
        
    var localized : String{
        return NSLocalizedString(self, comment: "")
    }
    
    var arToEnDigits : String {
        let arabicNumbers = ["٠": "0","١": "1","٢": "2","٣": "3","٤": "4","٥": "5","٦": "6","٧": "7","٨": "8","٩": "9"]
        var txt = self
        arabicNumbers.forEach { txt = txt.replacingOccurrences(of: $0, with: $1) }
        return txt
    }
    
    var isEmptyOrWhiteSpaces: Bool{
        return self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    static func random(length:Int)->String{
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString = ""
        
        while randomString.utf8.count < length{
            let randomLetter = letters.randomElement()
            randomString += randomLetter?.description ?? ""
        }
        return randomString
    }
}

public extension Optional where Wrapped == String{
    var isEmptyOrWhiteSpaces: Bool{
        if self == nil{
            return false
        } else {
            return self!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        }
    }
}
