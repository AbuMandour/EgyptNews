//
//  HomeViewController.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import UIKit
import MvvmWhite

class HomeViewController: UIViewController {
    
    @IBOutlet weak var headlineTableView: UITableView!
    @IBOutlet weak var faultLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    let homeViewModel = HomeViewModel(newsService: NewsService(newsRepo: NewsRepo(apiService: ApiService())))
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func initilaizeViews() {
        //headlineTableView.delegate = self
        headlineTableView.register(HeadlineTableViewCell.nib, forCellReuseIdentifier: "heloo")
    }
    
    func setupView() {
        activityIndicator.stopAnimating()
        faultLabel.isHidden = !homeViewModel.emptyString.isEmptyOrWhiteSpaces || !homeViewModel.errorString.isEmptyOrWhiteSpaces
        
    }
    
    func loadData(){
        Task.init(priority: .background) {
            await homeViewModel.getHeadlinesNews()
            
            if !homeViewModel.emptyString.isEmptyOrWhiteSpaces{
                print(homeViewModel.emptyString)
            } else if !homeViewModel.errorString.isEmptyOrWhiteSpaces{
                print(homeViewModel.errorString)
            } else {
                for headline in homeViewModel.headlineNews {
                    print("title: \(headline.title)")
                }
            }
        }
    }
}
