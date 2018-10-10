//
//  MovieCell.swift
//  Assignment1
//
//  Created by LinuxPlus on 9/18/18.
//  Copyright © 2018 LinuxPlus. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!

    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet
        {
            titleLabel.text = movie.title
            overviewLabel.text = movie.overview
            
            if movie.posterUrl != nil {
                posterImageView.af_setImage(withURL: movie.posterUrl!)
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
