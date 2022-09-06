//
//  CustomCell.swift
//  CustomUITableView
//
//  Created by Артем Билый on 06.09.2022.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descripionPost: UILabel!
    

    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var comments: UILabel!
    @IBOutlet weak var numberViews: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupForCell(info: SourceData) {
        mainImage.image = UIImage(named: info.postImageName)
        mainImage.contentMode = .scaleAspectFill
        time.text = "\(info.postedAt)"
        comments.text = "View all of \(info.countOfComments) comments"
        numberViews.text = "\(info.viewsCount) views"
        avatar.image = UIImage(named: info.avatarImageName)
        avatar.contentMode = .scaleAspectFill
        nickname.text = "\(info.nickname)"
        descripionPost.text = "\(info.description)"
    
    }
}
