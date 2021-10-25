//
//  Urls.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation

class Urls {
    private static let baseUrl = "https://newsapi.org/v2"
    private static let apiKey = "406b3984a3424d8db74ad7815b69736c"
    static let headlinesUrl = "\(baseUrl)/top-headlines?country=us&apiKey=\(apiKey)"
}



