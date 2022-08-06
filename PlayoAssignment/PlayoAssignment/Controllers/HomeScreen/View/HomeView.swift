//
//  HomeView.swift
//  PlayoAssignment
//
//  Created by MAC  on 05/08/22.
//

import UIKit

class HomeView: UIView {

    @IBOutlet weak var newsListTBL: UITableView!
    let refreshControl = UIRefreshControl()
    
    func setUpView(_ vc: UIViewController){
        vc.navigationItem.title = "Headlines"
        newsListTBL.register(UINib(nibName: "NewsListTBLCell", bundle: nil), forCellReuseIdentifier: "NewsListTBLCell")
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        newsListTBL.addSubview(refreshControl)
    }

}
