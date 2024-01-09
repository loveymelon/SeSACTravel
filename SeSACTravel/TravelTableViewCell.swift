//
//  TravelTableViewCell.swift
//  SeSACTravel
//
//  Created by 김진수 on 1/8/24.
//

import UIKit
import Kingfisher

class TravelTableViewCell: UITableViewCell {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    let format = DateFormatter()
    
    func configuarCell(index: Int) {
        let url = URL(string: MagazineInfo.magazine[index].photo_image)
        
        self.mainLabel.text = MagazineInfo.magazine[index].title
        self.subLabel.text = MagazineInfo.magazine[index].subtitle
        
        format.dateFormat = "yyMMdd"
        
        let date = format.date(from: MagazineInfo.magazine[index].date)
        
        format.dateFormat = "yy년 MM월 dd일"
        
        self.dateLabel.text = format.string(from: date!)
        self.mainImageView.kf.setImage(with: url)
        
        self.mainImageView.clipsToBounds = true
        self.mainImageView.layer.cornerRadius = self.mainImageView.bounds.width / 2
    }
    
}
