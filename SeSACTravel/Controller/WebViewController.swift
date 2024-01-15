//
//  WebViewController.swift
//  SeSACTravel
//
//  Created by 김진수 on 1/15/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var urlString: String?
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWebView()
    }

}

extension WebViewController {
    func setupWebView() {
        if let url = URL(string: urlString!) {
            
            let requset = URLRequest(url: url)
            
            webView.load(requset)
        }
    }
}
