//
//  BaseService.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 26/10/2021.
//

import Foundation

open class BaseService{
    
    public init() {
        
    }
    
    public func getImageUrl(from stringUrl: String) -> URL {
        if let url = URL(string: stringUrl) {
            return url
        }
        guard let defaultImageUrl = Settings.defaultImageUrl else{
            return URL(string: "")!
        }
        return URL(string: defaultImageUrl)!
    }
}
