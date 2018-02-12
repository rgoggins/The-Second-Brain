import UIKit

protocol SwipeableCardViewDataSource: class {
    
    //Adapted from github.com/phillfarrugia/swipeable-view-stack
        
    func numberOfCards() -> Int
    
    func card(forItemAtIndex index: Int) -> SwipeableCardViewCard

    func viewForEmptyCards() -> UIView?

}
