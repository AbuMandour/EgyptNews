//
//  NewsRepo.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation
import MvvmWhite

class newsRepo : NewsRepoProtocol {
    
    let apiService: ApiProtocol
    
    init(apiService: ApiProtocol) {
        self.apiService = apiService
    }
    
    func fetchNews() async -> Result<HeadlinesData, ApiError> {
        let result = await apiService.fetchItem(urlString: Urls.headlinesUrl) as Result<HeadlinesData,ApiError>
        switch result {
        case .success(let data):
            return .success(data)
        case .failure(let error):
            return .failure(error)
        }
    }
    
}
