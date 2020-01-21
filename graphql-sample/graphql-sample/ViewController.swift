//
//  ViewController.swift
//  graphQlTest
//
//  Created by Gregory Seunghyun Jin on 2020/01/11.
//  Copyright © 2020 Gregory Seunghyun Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let viewModel:ViewModel = ViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        self.viewModel.fetchQuery { success in 
            self.tableView.reloadData()
        }
    }
}


extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.stores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath) as! SampleCell
        cell.store = self.viewModel.stores[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
