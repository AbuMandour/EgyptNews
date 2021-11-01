//
//  HeadlineTableViewCell.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 27/10/2021.
//

import UIKit
import MvvmWhite

class HeadlineTableViewCell: UITableViewCell , BaseViewCell {
    typealias Model = HeadlineModel
    //MARK outlets
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    var headlineModel: HeadlineModel?{
        didSet{
            if let headlineModel = headlineModel {
                bind(headlineModel)
            }         
        }
    }
            
    func bind(_ model: HeadlineModel) {
        titleLabel.text = model.title
        authorLabel.text = model.author
    }
    
}
