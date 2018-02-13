//
//  ViewController.swift
//  The Second Brain
//
//  Created by Ryan Goggins on 2/11/18.
//  Copyright © 2018 Ryan Goggins. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var writeNotesLabel: UILabel!
    @IBOutlet weak var notesTextField: UITextField!
    
    //MARK: Actions
    @IBAction func rightSwipeRecognizer(_ sender: UISwipeGestureRecognizer) {
        // You can add whatever you want to happen when someone swipes right here.
    }
    
    @IBAction func leftSwipeRecognizer(_ sender: UISwipeGestureRecognizer) {
        // You can add whatever you want to happen when someone swipes left here.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                print("Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
            default:
                break
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

