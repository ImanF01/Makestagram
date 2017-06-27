//
//  HomeViewController.swift
//  Makestagram
//
//  Created by Iman F on 6/26/17.
//  Copyright © 2017 Iman F (group project). All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()
    override func viewDidLoad() {
        super.viewDidLoad()
        UserService.posts(for: User.current) { (posts) in
            self.posts = posts
            self.tableView.reloadData()
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostImageCell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}
