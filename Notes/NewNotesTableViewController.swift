//
//  NewNotesTableViewController.swift
//  Notes
//
//  Created by Денис Ільницький on 26/08/2022.
//

import UIKit

class NewNotesTableViewController: UITableViewController {
    
    var note = Notes(emoji: "", name: "", description: "", isFavourite: false)

    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        updateSaveButtonState()

      
    }
    
    private func updateSaveButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    

    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    private func updateUI() {
        emojiTextField.text = note.emoji
        nameTextField.text = note.name
        descriptionTextField.text = note.description
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        
        self.note = Notes(emoji: emoji, name: name, description: description, isFavourite: self.note.isFavourite)
    }
}
