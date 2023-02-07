//
//  ViewController.swift
//  labels
//
//  Created by SeungYeon Yoo on 2022/05/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle01: UILabel!
    
    @IBOutlet var uiTitle02: UILabel!
    
    @IBOutlet var uiTitle03: UILabel!
    
    @IBOutlet var uiTitle04: UILabel!
    
    @IBOutlet var uiTitle05: UILabel!
    
    @IBAction func clickBtn01(_ sender: UIButton) {
        //Button01 이 클릭되었을 때 Label01의 텍스트를 변경함
        self.uiTitle01.text = "Button01 Clicked"
    }
    @IBAction func clickBtn02(_ sender: UIButton) {
        self.uiTitle02.text = "Button02 Clicked"
    }
    @IBAction func clickBtn03(_ sender: UIButton) {
        self.uiTitle03.text = "Button03 Clicked"
    }
    @IBAction func clickBtn04(_ sender: UIButton) {
        self.uiTitle04.text = "Button04 Clicked"
    }
    @IBAction func clickBtn05(_ sender: UIButton) {
        self.uiTitle05.text = "Button05 Clicked"
    }
}

