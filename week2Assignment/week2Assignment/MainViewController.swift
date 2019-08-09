//
//  MainViewController.swift
//  week2Assignment
//
//  Created by Su Win Phyu on 8/9/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    static let identifier = "MainViewController"

    @IBOutlet var tableViewFriendsList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add DataSource
        tableViewFriendsList.dataSource = self
        
        //register cell

        let nib = UINib(nibName: FriendsListTableViewCell.identifier, bundle: nil)
        tableViewFriendsList.register(nib, forCellReuseIdentifier: FriendsListTableViewCell.identifier)
        
        //to adjust the top and bottom of cell
        tableViewFriendsList.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 14, right: 0)

       
    }
  

}

extension MainViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsListTableViewCell.identifier, for: indexPath) as! FriendsListTableViewCell
        return cell
    }
    
    
}
