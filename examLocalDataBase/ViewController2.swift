//
//  ViewController2.swift
//  examLocalDataBase
//
//  Created by R83 on 12/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    @IBOutlet weak var tabelView: UITableView!
    var arr2 = Sqlite.getData()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.lable1.text = arr2[indexPath.row].id.description
        cell.label2.text = arr2[indexPath.row].name
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    

}
