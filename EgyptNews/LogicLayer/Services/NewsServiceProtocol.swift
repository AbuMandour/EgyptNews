//
//  NewsServiceProtocol.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation
import MvvmWhite

protocol NewsServiceProtocol {
    func getHeadlines() async -> Result<[HeadlineModel], DataState>
}
