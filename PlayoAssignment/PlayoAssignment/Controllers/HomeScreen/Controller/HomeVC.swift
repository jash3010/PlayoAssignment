//
//  HomeVC.swift
//  PlayoAssignment
//
//  Created by MAC  on 05/08/22.
//

import UIKit

class HomeVC: UIViewController {

    static func storyboardInstance() -> UINavigationController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeNavigation") as! UINavigationController
    }
    
    lazy var mainView: HomeView = {
        return self.view as! HomeView
    }()
    
    lazy var mainViewModel: HomeVM = {
        return HomeVM(self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.setUpView(self)
        Task{
            await mainViewModel.getNewsData()
            mainView.newsListTBL.reloadData()
        }
        
    }
    
    

}

