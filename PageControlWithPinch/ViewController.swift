//
//  ViewController.swift
//  PageControl
//
//  Created by SeungYeon Yoo on 2022/05/05.
//

import UIKit

var images = ["01.png", "02.png", "03.png", "04.png", "05.png", "06.png"]

class ViewController: UIViewController {
    
    @IBOutlet var imgPinch: UIImageView!
    
    var initialImageSize:CGFloat!
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControlWithPinch: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControlWithPinch.numberOfPages = images.count
        pageControlWithPinch.currentPage = 0
        
        pageControlWithPinch.pageIndicatorTintColor = UIColor.green
        pageControlWithPinch.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[0])
        // 여기서 image append를 해서 2~6까지 추가해야될거 같음. -> 아니었다 !!
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControlWithPinch.currentPage])
    }
    
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
//            imgView.image = UIImage(named: images[0]) -> 쓸필요가 없었던 코드였다... 위에서 초기화 했기 때문에 여기선 굳이 안해도 되나보다. 오히려 밑에서 현재 페이지 보여주는걸 했어야 됐음.
            
            //여기서 인덱스가 마이너스 값이 되면 안되기 때문에 -> if 로 조건문 만들어서 해야됐음.
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
                if (pageControlWithPinch.currentPage < pageControlWithPinch.numberOfPages - 1) {
                    pageControlWithPinch.currentPage = pageControlWithPinch.currentPage + 1
                }
                print("Swiped Left")
            case UISwipeGestureRecognizer.Direction.right:
                if (pageControlWithPinch.currentPage > 0) {
                    pageControlWithPinch.currentPage = pageControlWithPinch.currentPage - 1
                }
                print("Swiped Right")
            default:
                break
            }
            
            imgView.image = UIImage(named: images[pageControlWithPinch.currentPage])
        }
    }
    
}

