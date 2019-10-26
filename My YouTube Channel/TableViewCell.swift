//
//  TableViewCell.swift
//  My YouTube Channel
//
//  Created by Can Balkaya on 10/26/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit
import WebKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var title: UITextView!
    
    var urlText = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(_ video: Video) {
        title.text = video.title
        
        let url = URL(string: video.thumbnailUrl)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
}
