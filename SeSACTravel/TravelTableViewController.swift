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
    }
    
    func designNavigationItem() {
        self.navigationItem.title = "SeSAC TRAVEL"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MagazineInfo.magazine.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell", for: indexPath) as! TravelTableViewCell
        let url = URL(string: MagazineInfo.magazine[indexPath.row].photo_image)
        let format = DateFormatter()
        
        format.dateFormat = "yyMMdd"
        
        let date = format.date(from: MagazineInfo.magazine[indexPath.row].date)
        
        format.dateFormat = "yy년 MM월 dd일"
        
        cell.mainImageView.clipsToBounds = true
        cell.mainImageView.layer.cornerRadius = 15
        cell.mainImageView.contentMode = .scaleAspectFill
        
        cell.mainLabel.font = .boldSystemFont(ofSize: 25)
        cell.mainLabel.numberOfLines = 0
        
        cell.subLabel.textColor = .lightGray
        cell.dateLabel.textColor = .lightGray
        
        cell.mainLabel.text = MagazineInfo.magazine[indexPath.row].title
        cell.subLabel.text = MagazineInfo.magazine[indexPath.row].subtitle
        cell.dateLabel.text = format.string(from: date!)
        
        cell.mainImageView.kf.setImage(with: url)
        
        return cell
    }

}
