//
//  TravelTableViewController.swift
//  SeSACTravel
//
//  Created by 김진수 on 1/8/24.
//

import UIKit
import Kingfisher

class TravelTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        designNavigationItem()
        setupTableView()
    }

}

extension TravelTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MagazineInfo.magazine.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TravelTableViewCell.identifier, for: indexPath) as! TravelTableViewCell
        let indexValue = indexPath.row
        
        cell.configuarCell(index: indexValue)
        
        cell.mainImageView.clipsToBounds = true
        cell.mainImageView.layer.cornerRadius = 15
        cell.mainImageView.contentMode = .scaleAspectFill
        
        cell.mainLabel.font = .boldSystemFont(ofSize: 25)
        cell.mainLabel.numberOfLines = 0
        
        cell.subLabel.textColor = .lightGray
        cell.dateLabel.textColor = .lightGray
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: WebViewController.identifier) as! WebViewController
        
        vc.urlString = MagazineInfo.magazine[indexPath.row].link
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension TravelTableViewController {
    func designNavigationItem() {
        self.navigationItem.title = "SeSAC TRAVEL"
    }
    
    func setupTableView() {
        tableView.rowHeight = UITableView.automaticDimension // UITableView의 높이를 가변적으로 정하고 싶을때
    }
}
