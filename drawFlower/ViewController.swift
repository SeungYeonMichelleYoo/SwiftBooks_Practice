//
//  ViewController.swift
//  drawFlower
//
//  Created by SeungYeon Yoo on 2022/05/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 여기 부분을 놓침. 함수를 따로 빼서 구현해야 됨
        drawFlower()
    }
    
    func drawFlower() {
        UIGraphicsBeginImageContext(imgView.frame.size)
//        let context = UIGraphicsBeginImageContext()! 이렇게 하면 안됨 대신에 밑에처럼 써야됨 ..
        let context = UIGraphicsGetCurrentContext()!
        
        // 채워진 삼각형 그리기
        context.setLineWidth(3.0)
        context.setStrokeColor(UIColor.red.cgColor)
        context.setFillColor(UIColor.red.cgColor)
        
        context.move(to: CGPoint(x: 170, y: 200))
        context.addLine(to: CGPoint(x: 200, y:450))
        context.addLine(to: CGPoint(x: 140, y:450))
        context.addLine(to: CGPoint(x: 170, y:200))
        context.fillPath()
        context.strokePath()
        
//        imgView.image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext() -> 마지막에 한번만 쓰면 된다.
        
        // 원 그리기
        context.setLineWidth(2.0)
        context.setStrokeColor(UIColor.green.cgColor)
        
        context.addEllipse(in: CGRect(x: 120, y: 150, width: 100, height: 100))
//        context.strokePath()
        
        context.addEllipse(in: CGRect(x: 120+50, y: 150, width: 100, height: 100))
//        context.strokePath()
        
        context.addEllipse(in: CGRect(x: 120-50, y: 150, width: 100, height: 100))
//        context.strokePath()
        
        context.addEllipse(in: CGRect(x: 120, y: 150-50, width: 100, height: 100))
//        context.strokePath()
        
        context.addEllipse(in: CGRect(x: 120, y: 150+50, width: 100, height: 100))
        context.strokePath()
        
        imgView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }


}

