//
//  ViewController.swift
//  Mission_MoveToPage
//
//  Created by SeungYeon Yoo on 2022/05/06.
//

import UIKit

var nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
//굳이 이렇게 안했어도 됐음. let NUM_PAGE = 10 이렇게 할 수도 있었다.

class ViewController: UIViewController {
    
    @IBOutlet var showLabel: UILabel! //라벨 출력용 아웃렛 변수
    @IBOutlet var pageControl: UIPageControl! // 페이지 컨트롤용 아웃렛 변수
    
    //뷰가 로드되었을 때 호출됨
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = nums.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        showLabel.text = String(pageControl.currentPage + 1) // 이 코드를 못써서 첫번째 페이지에서 아무것도 출력이 안 되었음 ..! 이거 빼고 다 맞음 ^^

    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        showLabel.text = "\(pageControl.currentPage + 1)"
    }
    
}

