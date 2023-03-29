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
        let mark: String
        let grade: String
        let imagename: String
    }
    
    let data: [mycell] =  [
        mycell(title: "Shailee", mark: "90",grade: "A", imagename: "Image"),
        mycell(title: "Bhumi", mark: "98",grade: "A+", imagename: "Image"),
        mycell(title: "Ketul", mark: "96",grade: "A+", imagename: "Image"),
        mycell(title: "Harshil", mark: "93",grade: "A", imagename: "Image"),
        mycell(title: "Kruti", mark: "88",grade: "B", imagename: "Image"),
        
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
        print("Selected\(data[indexPath.row].mark)")
        print("Selected\(data[indexPath.row].grade)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        let content = data[indexPath.row]
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.CellImage.image = UIImage(named: content.imagename)
        cell.CellLabel.text = content.title
        cell.CellMarks.text = content.mark
        cell.CellGrade.text = content.grade
        
        return cell
    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
}
