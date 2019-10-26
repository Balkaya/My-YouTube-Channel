//
//  WebVC.swift
//  My YouTube Channel
//
//  Created by Can Balkaya on 10/26/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit
import WebKit

class WebVC: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    var urlText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: urlText)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
}
