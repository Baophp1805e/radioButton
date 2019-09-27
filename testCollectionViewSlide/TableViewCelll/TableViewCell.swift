//
//  TableViewCell.swift
//  testCollectionViewSlide
//
//  Created by Bao on 9/26/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
//    var selected = false
    @IBOutlet weak var radioButton: RadioButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @objc func radioButtonTapped(_ radioButton: UIButton) {
        print("radio button tapped")
     
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func tapRadioButton(_ sender: Any) {
    }
    
}
