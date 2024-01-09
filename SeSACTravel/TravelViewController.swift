//
//  TravelViewController.swift
//  SeSACTravel
//
//  Created by 김진수 on 1/9/24.
//

import UIKit

class TravelViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingCollectionView()
    }
    
    func settingCollectionView() {
        let layout = UICollectionViewFlowLayout()
        
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        layout.scrollDirection = .horizontal

        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        let xib = UINib(nibName: "TravelCollectionViewCell", bundle: nil)
        self.collectionView.register(xib, forCellWithReuseIdentifier: "TravelCollectionViewCell")
        self.collectionView.collectionViewLayout = layout
    }

}

extension TravelViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MagazineInfo.magazine.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TravelCollectionViewCell", for: indexPath) as! TravelCollectionViewCell
        let indexValue = indexPath.item
        
        cell.configuarCell(index: indexValue)
        
        return cell
    }
    
    
}
