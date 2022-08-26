//
//  NewNotesTableViewController.swift
//  Notes
//
//  Created by Денис Ільницький on 26/08/2022.
//

import UIKit

class NewNotesTableViewController: UITableViewController {

    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    @IBAction func textChanged(_ sender: UITextField) {
    }
   
   
}
