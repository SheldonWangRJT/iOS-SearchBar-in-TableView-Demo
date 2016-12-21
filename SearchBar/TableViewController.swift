//
//  TableViewController.swift
//  SearchBar
//
//  Created by Shinkangsan on 12/20/16.
//  Copyright © 2016 Sheldon. All rights reserved.
//

import UIKit

enum selectedScope:Int {
    case name = 0
    case year = 1
    case by = 2
}

class TableViewController: UITableViewController, UISearchBarDelegate {

    
    var dataAry:[Model] = Model.generateModelArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchBarSetup()
    }

    func searchBarSetup() {
        let searchBar = UISearchBar(frame: CGRect(x:0,y:0,width:(UIScreen.main.bounds.width),height:70))
        searchBar.showsScopeBar = true
        searchBar.scopeButtonTitles = ["Name","Year","By"]
        searchBar.selectedScopeButtonIndex = 0
        searchBar.delegate = self
        self.tableView.tableHeaderView = searchBar
    }
    
    // MARK: - search bar delegate
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            dataAry = Model.generateModelArray()
            self.tableView.reloadData()
        }else {
            filterTableView(ind: searchBar.selectedScopeButtonIndex, text: searchText)
        }
    }
    
    func filterTableView(ind:Int,text:String) {
        switch ind {
        case selectedScope.name.rawValue:
            dataAry = dataAry.filter({ (mod) -> Bool in
                return mod.imageName.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
        case selectedScope.year.rawValue:
            dataAry = dataAry.filter({ (mod) -> Bool in
                return mod.imageYear.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
        case selectedScope.by.rawValue:
            dataAry = dataAry.filter({ (mod) -> Bool in
                return mod.imageBy.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
        default:
            print("no type")
        }
    }
    
    
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataAry.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell1
        
        let model = dataAry[indexPath.row]
        
        cell.nameLbl.text = model.imageName
        
        cell.imgView.image = UIImage(named: model.imageName)
        
        cell.byLbl.text = model.imageBy
        cell.yearLbl.text = model.imageYear
        
        
        return cell
    }



}
