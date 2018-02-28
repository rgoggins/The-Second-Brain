//
//  NotesVC.swift
//  The Second Brain
//
//  Created by Ryan Goggins on 2/11/18.
//  Copyright © 2018 Ryan Goggins. All rights reserved.
//

import UIKit
import Firebase


class NotesVC: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var writeNotesLabel: UILabel!
    
    @IBOutlet weak var textField: UITextView!
    
    //MARK: Actions
    
    @IBAction func test(_ sender: Any) {
    }
    //    var ref : DatabaseReference!
    
    @IBAction func add(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    func textFieldDidBeginEditing(textField: UITextView) {
//        textField.text = ""
//    }
    
    
    @IBAction func swipeRightGesture(_ sender: Any) {
        self.saveNote()
        self.performSegue(withIdentifier: "showTags", sender: nil)
    }
    
    func saveNote() {
        let defaults = UserDefaults.standard
        defaults.set(self.textField.text, forKey: "NOTE_TEXT")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

