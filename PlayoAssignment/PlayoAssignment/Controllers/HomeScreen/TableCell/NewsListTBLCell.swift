//
//  NewsListTBLCell.swift
//  PlayoAssignment
//
//  Created by MAC  on 05/08/22.
//

import UIKit

class NewsListTBLCell: UITableViewCell {

    @IBOutlet weak var newsIMGView: UIImageView!
    @IBOutlet weak var newsTitleLBL: UILabel!
    @IBOutlet weak var newsAuthorLBL: UILabel!
    @IBOutlet weak var descriptionLBL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpView(data: Article){
        newsTitleLBL.text = data.title
        newsAuthorLBL.text = data.author
        descriptionLBL.text = data.articleDescription
    }
}
