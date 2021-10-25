//
//  ApiProtocol.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation

public protocol ApiProtocol {
    
    func fetchItem<T:Codable>(urlString: String) async -> Result<T,ApiError>
    
    func fetchList<T:Codable>(urlString: String) async -> Result<[T],ApiError>

}
