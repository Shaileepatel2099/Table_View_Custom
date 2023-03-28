//
//  ViewController.swift
//  Table_View_Custom
//
//  Created by Parth Patel on 2023-03-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    var tableItems = ["Item1", "Item2", "Item3", "Item4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView (_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int{
        return tableItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tableItems[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected \(tableItems[indexPath.row])")
    }
    
}
