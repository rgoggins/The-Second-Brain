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
    
//    var ref : DatabaseReference!
    
    @IBAction func add(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        ref = Database.database().reference()
        
        _ = UITapGestureRecognizer(target: self, action: Selector(("respond")))
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down

        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.left
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.up
        
        self.view.gestureRecognizers = [swipeRight, swipeDown, swipeLeft, swipeUp]

        
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) -> Void {
        
        print("actually entered into respond to swipe gesture stack")
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                self.saveNote()
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
            default:
                break
            }
        }
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

