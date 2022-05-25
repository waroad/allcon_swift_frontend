//
//  ViewController.swift
//  AllCon
//
//  Created by YunD on 2022/05/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //리뷰테이블
    @IBOutlet weak var ReviewTable: UITableView!
    @IBOutlet weak var button: UIButton!
    @IBAction func onClick(_ sender: Any) {
        if button.titleLabel?.text == "🤍"{
            button.setTitle("❤️", for: .normal)
        }
        else{
            button.setTitle("🤍", for: .normal)
        }
    }
}

