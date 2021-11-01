//
//  HomeViewModel.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 27/10/2021.
//

import Foundation


class HomeViewModel {
    
    var headlineNews = [HeadlineModel]()
    let newsService: NewsServiceProtocol
    var errorString = ""
    var emptyString = ""
    
    init(newsService: NewsServiceProtocol) {
        self.newsService = newsService
    }
    
    public func getHeadlinesNews() async {        
        let result = await newsService.getHeadlines()
        switch result {
        case .success(let models):
            headlineNews = models
        case .failure(let dataState):
            switch dataState {
            case .Error(let message):
                errorString = message
            case .Empty(let message):
                emptyString = message
            }
        }
    }
    
}
