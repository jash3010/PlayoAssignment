//
//  HomeTableViewDelegate.swift
//  PlayoAssignment
//
//  Created by MAC  on 05/08/22.
//

import Foundation
import UIKit

extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainViewModel.newsDataARY.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsListTBLCell", for: indexPath) as! NewsListTBLCell
        return cell
    }
}