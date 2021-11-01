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
        initilaizeTableView()
        loadData()
    }
    
    private func initilaizeTableView() {
        headlineTableView.delegate = self
        headlineTableView.dataSource = self
        headlineTableView.register(HeadlineTableViewCell.nib, forCellReuseIdentifier: HeadlineTableViewCell.typeName)
    }
    
    private func setupViews(faultText: String?) {
        DispatchQueue.main.async { [self] in
            activityIndicator.stopAnimating()
            guard let faultText = faultText else {
                headlineTableView.reloadData()
                return
            }            
            faultLabel.text = faultText
            faultLabel.isHidden = false
        }
    }
    
    private func loadData(){
        Task.init(priority: .background) {
            await homeViewModel.getHeadlinesNews()
            if !homeViewModel.emptyString.isEmptyOrWhiteSpaces{
                setupViews(faultText: homeViewModel.emptyString)
            } else if !homeViewModel.errorString.isEmptyOrWhiteSpaces{
                setupViews(faultText: homeViewModel.errorString)
            } else {
                setupViews(faultText: nil)
            }
        }
    }
}

extension HomeViewController : UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        homeViewModel.headlineNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HeadlineTableViewCell.typeName, for: indexPath) as? HeadlineTableViewCell else {
            return UITableViewCell()
        }
        cell.headlineModel = homeViewModel.headlineNews[indexPath.row]
        return cell
    }
    
    
}
