//
//  HomeView.swift
//  PlayoAssignment
//
//  Created by MAC  on 05/08/22.
//

import UIKit

class HomeView: UIView {

    @IBOutlet weak var newsListTBL: UITableView!
    
    func setUpView(_ vc: UIViewController){
        vc.navigationItem.title = "Headlines"
        newsListTBL.register(UINib(nibName: "NewsListTBLCell", bundle: nil), forCellReuseIdentifier: "NewsListTBLCell")
    }

}
