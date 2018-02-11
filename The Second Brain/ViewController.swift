//
//  ViewController.swift
//  The Second Brain
//
//  Created by Ryan Goggins on 2/11/18.
//  Copyright © 2018 Ryan Goggins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapHandler = UITapGestureRecognizer(target: self, action: Selector("respond"))
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: Selector("respondToSwipeGesture:"))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: Selector("respondToSwipeGesture:"))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.view.addGestureRecognizer(swipeDown)
        
        print("going")
    }
    
    func respondToSwipeGesture(_ gesture: UIGestureRecognizer) -> Void {
        
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

