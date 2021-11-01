//
//  MockNewsRepo.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 27/10/2021.
//

import Foundation
import MvvmWhite

class MockNewsRepo : NewsRepoProtocol{
    func fetchNews() async -> Result<HeadlinesData, ApiError> {
        return .success(HeadlinesData(status: "status", totalResults: 2, articles: [Article(source: Source(id: "1", name: "source"),
                                                                                            author: nil,
                                                                                            title: "title",
                                                                                            articleDescription: "article description",
                                                                                            url: "www.google.com",
                                                                                            urlToImage: "www.image.com",
                                                                                            publishedAt: "date",
                                                                                            content: nil)]))
    }
}
