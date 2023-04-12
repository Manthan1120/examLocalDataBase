//
//  ViewController.swift
//  examLocalDataBase
//
//  Created by R83 on 12/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFiled2: UITextField!
    @IBOutlet weak var textField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Sqlite.createFile()
    }

    @IBAction func saveBUttonAction(_ sender: Any) {
        if let x = textField1.text , let y = Int(x) {
            Sqlite.addData(id: y, name: textFiled2.text!)
        }
        
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
        
        if let x = textField1.text , let y = Int(x) {
            Sqlite.deleteData(id: y, name: textFiled2.text!)
        }
        
    }
    
    @IBAction func showButtonAction(_ sender: Any) {
        
        let naviagate = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(naviagate, animated: true)
        
    }
    
    
    
}

