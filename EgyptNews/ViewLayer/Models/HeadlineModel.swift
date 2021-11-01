//
//  HeadlineModel.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation
import MvvmWhite

struct HeadlineModel : BaseModel {
    var id: String            
    var title: String
    var imageUrl: URL
    var author: String
    var description: String
}
