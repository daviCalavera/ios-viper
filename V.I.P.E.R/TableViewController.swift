//
//  TableViewController.swift
//  V.I.P.E.R
//
//  Created by David on 06/12/2017.
//  Copyright © 2017 David. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController, PersonaViewProtocol {
    var presenter: PersonaPresenter?
    var objects: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
                barButtonSystemItem: .add, target: self,
                action: Selector(("addNewObject"))
        )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if objects != nil {
            return objects!.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel!.text = objects![indexPath.row]
        
        return cell
    }
    
    func addNewObject() {
        presenter!.addNewObject()
    }
    
    func setListWithObjects(objects: [String]) {
        
        self.objects = objects
        self.tableView.reloadData()
    }
    
}


