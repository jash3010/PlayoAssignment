//
//  DetailsWebView.swift
//  PlayoAssignment
//
//  Created by MAC  on 06/08/22.
//

import UIKit
import WebKit

class DetailsWebView: UIView {

    @IBOutlet weak var detailsWebView: WKWebView!

    func setUpUI(_ vc: DetailsWebVC){
        vc.navigationItem.title = "Details"
        detailsWebView.load(URLRequest(url: URL(string: vc.detailURL)!))
    }
}
