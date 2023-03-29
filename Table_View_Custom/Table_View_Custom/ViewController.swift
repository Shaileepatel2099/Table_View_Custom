//
//  ViewController.swift
//  Table_View_Custom
//
//  Created by Parth Patel on 2023-03-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    
    struct mycell{
        let title: String
        let imagename: String
    }
    
    let data: [mycell] =  [
        mycell(title: "Item 1", imagename: "Image"),
        mycell(title: "Item 2", imagename: "Image"),
        mycell(title: "Item 3", imagename: "Image"),
        mycell(title: "Item 4", imagename: "Image"),
        mycell(title: "Item 5", imagename: "Image"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.delegate = self
        mytable.dataSource = self
        // Do any additional setup after loading the view.
        
        }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected\(data[indexPath.row].title)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        let content = data[indexPath.row]
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.CellImage.image = UIImage(named: content.imagename)
        cell.CellLabel.text = content.title
        return cell
    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
}
