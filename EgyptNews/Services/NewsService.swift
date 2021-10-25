//
//  NewsServices.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation
import MvvmWhite

class NewsService : NewsServiceProtocol {
    let newsRepo: NewsRepoProtocol
    
    init(newsRepo: NewsRepoProtocol) {
        self.newsRepo = newsRepo
    }
    
    func getHeadlines() -> Result<HeadlineModel, DataState> {
        .failure(.Empty("empty"))
    }
}
