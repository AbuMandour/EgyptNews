//
//  NewsServices.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation
import MvvmWhite

class NewsService :BaseService, NewsServiceProtocol{
    
    let newsRepo: NewsRepoProtocol
    
    init(newsRepo: NewsRepoProtocol) {
        self.newsRepo = newsRepo
    }
    
    func getHeadlines() async -> Result<[HeadlineModel], DataState> {
        let result = await newsRepo.fetchNews() as Result<HeadlinesData,ApiError>
        switch result{
        case .success(let data):
            if data.articles.isEmpty{
                return .failure(.Empty("No data"))
            }
            let models = mapToHeadlineModels(data: data)
            return .success(models)
        case .failure(let error):
            return .failure(.Error(error.description))
        }
    }
    
    func mapToHeadlineModels (data: HeadlinesData) -> [HeadlineModel]{
        var models = [HeadlineModel]()
        for article in data.articles {
            let model = HeadlineModel(id: UUID().uuidString,
                                      title: article.title ?? "no title",
                                      imageUrl: getImageUrl(from: article.urlToImage ?? ""),
                                      author: article.author ?? "no author",
                                      description: article.articleDescription ?? "empty article")
            models.append(model)
        }
        return models
    }
}

