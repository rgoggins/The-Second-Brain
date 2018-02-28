//
//  SearchVC.swift
//  The Second Brain
//
//  Created by Ryan Goggins on 2/28/18.
//  Copyright © 2018 Ryan Goggins. All rights reserved.
//

import UIKit
import Firebase

class SearchVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tagsInputTextField: UITextField!
    
    @IBOutlet weak var tableOfEntries: UITableView!
    
    var arr = [String]()
    var ref: DatabaseReference!
    var handle : DatabaseHandle!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    
    @IBAction func searchBar(_ sender: Any) {
        let entry = String(describing: tagsInputTextField)
        
        
        ref = Database.database().reference()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handle = ref?.child("list").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String { //check if you can convert to string
//                array.append(item)
//                TableView.reloadData()
            }
            
        })
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
