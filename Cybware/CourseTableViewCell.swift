//
//  CourseTableViewCell.swift
//  Cybware
//
//  Created by Shayaan Haque on 21/05/24.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    
    
    @IBOutlet var courseImageView: UIImageView!
    
    @IBOutlet var title: UILabel!
    
    @IBOutlet var courseDescription: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
// Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func updateUI(with courseList : CourseDetails){
        courseImageView.image = courseList.cImage
        title.text = courseList.title
        courseDescription.text = courseList.description
    }
}
