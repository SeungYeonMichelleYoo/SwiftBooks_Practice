//
//  ViewController.swift
//  Practice_HelloWorld
//
//  Created by SeungYeon Yoo on 2022/05/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sayHello(_ sender: Any) {
        self.uiTitle.text = "Hello, World!"
    }
    
}

