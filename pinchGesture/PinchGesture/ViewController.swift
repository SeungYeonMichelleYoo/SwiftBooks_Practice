//
//  ViewController.swift
//  PinchGesture
//
//  Created by SeungYeon Yoo on 2022/05/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgPinch: UIImageView!
    var initialFontSize:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }
    


}

