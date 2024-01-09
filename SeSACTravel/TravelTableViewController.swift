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
        
        tableView.rowHeight = UITableView.automaticDimension // UITableView의 높이를 가변적으로 정하고 싶을때
        designNavigationItem()
    }
    
    func designNavigationItem() {
        self.navigationItem.title = "SeSAC TRAVEL"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MagazineInfo.magazine.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell", for: indexPath) as! TravelTableViewCell
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

}
