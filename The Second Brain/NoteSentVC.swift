//
//  NoteSentVC.swift
//  The Second Brain
//
//  Created by Ahmet Oğuzlu on 15.02.2018.
//  Copyright © 2018 Ryan Goggins. All rights reserved.
//

import UIKit
import Firebase


class NoteSentVC: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var sentLabel: UILabel!
    @IBOutlet weak var tapForNewNoteLabel: UILabel!
    
    
    
    //MARK: Actions
    @IBAction func tapRecognizer(_ sender: UITapGestureRecognizer) {
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let defaults = UserDefaults.standard
        
        if let noteText = defaults.object(forKey: "NOTE_TEXT") {
            if let noteTags = defaults.object(forKey: "NOTE_TAGS") {
                // do something with firebase here...
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


