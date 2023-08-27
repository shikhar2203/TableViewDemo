//
//  ViewController.swift
//  TableViewDemo
//
//  Created by shikhar on 27/08/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var arr = ["ABC", "DEF", "GHI", "JKL", "MNO"]
    
    var image = ["pic1", "pic2", "pic3", "pic4", "pic5", "pic6", "pic7", "pic8", "pic9", "pic10", "pic11", "pic12", "pic13"]

    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTable.dataSource = self
        myTable.delegate = self
        
        myTable.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "cellcustom")
         
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(image[indexPath.row])is pressed")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cellcustom", for: indexPath) as! CustomCell
        cell.CustomImageView.image = UIImage(named: image[indexPath.row])
//        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Table 1"
    }
    
}

