//
//  NewsRepoProtocol.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation
import MvvmWhite

protocol NewsRepoProtocol {
    func fetchNews() async -> Result<HeadlinesData, ApiError>
}
