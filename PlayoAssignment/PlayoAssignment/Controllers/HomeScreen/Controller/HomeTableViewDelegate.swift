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
        cell.selectionStyle = .none
        cell.setUpView(data: self.mainViewModel.newsDataARY[indexPath.row])        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailsWebVC.storyboardInstance()
        vc.detailURL = self.mainViewModel.newsDataARY[indexPath.row].url
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
