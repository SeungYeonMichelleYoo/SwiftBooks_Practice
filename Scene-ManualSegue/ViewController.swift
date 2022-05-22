//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by SeungYeon Yoo on 2022/05/22.
//

import UIKit

class ViewController: UIViewController {

  
    @IBAction func wind(_ sender: Any) {
    //세그웨이를 실행한다.
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    
}

