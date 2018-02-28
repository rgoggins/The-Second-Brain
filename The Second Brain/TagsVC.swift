//
//  TagsVC.swift
//  The Second Brain
//
//  Created by Ahmet Oğuzlu on 15.02.2018.
//  Copyright © 2018 Ryan Goggins. All rights reserved.
//

import UIKit
import Firebase


class TagsVC: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var tagsInputTextField: UITextField!
    
    //MARK: Actions
    @IBAction func rightSwipeRecognizer(_ sender: UISwipeGestureRecognizer) {
        self.saveTags()
    }
        
    @IBAction func leftSwipeRecognizer(_ sender: UISwipeGestureRecognizer) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Load previous notes in here
    }
    
    func saveTags() {
        let defaults = UserDefaults.standard
        defaults.set(self.tagsInputTextField.text, forKey: "NOTE_TAGS")
        self.performSegue(withIdentifier: "showSent", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


