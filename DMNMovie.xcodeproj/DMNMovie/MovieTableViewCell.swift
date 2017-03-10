//
//  MovieTableViewCell.swift
//  DMNMovie
//
//  Created by Michael Castillo on 3/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieDescriptionLabel: UITextView!

    @IBOutlet weak var ratingsLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var movieLabel: UIImageView!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
