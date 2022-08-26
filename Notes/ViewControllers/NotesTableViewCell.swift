//
//  NotesTableViewCell.swift
//  Notes
//
//  Created by Денис Ільницький on 25/08/2022.
//

import UIKit

class NotesTableViewCell: UITableViewCell {
    
   
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func set(object: Notes) {
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
        
    }
   

}
