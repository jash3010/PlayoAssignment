//
//  DetailsWebVC.swift
//  PlayoAssignment
//
//  Created by MAC  on 06/08/22.
//

import UIKit

class DetailsWebVC: UIViewController {
    
    static func storyboardInstance() -> DetailsWebVC{
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailsWebVC") as! DetailsWebVC
    }
    
    lazy var mainView: DetailsWebView = {
        return self.view as! DetailsWebView
    }()
    var detailURL: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainView.setUpUI(self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
