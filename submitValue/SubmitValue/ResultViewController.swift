//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by SeungYeon Yoo on 2022/05/24.
//

import UIKit

class ResultViewController: UIViewController {
    //화면에 값을 표시하는데 사용될 레이블
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    //이전 화면에서 전달되는 값을 받기 위해 프로퍼티를 추가
    //1. email값을 받을 변수
    var paramEmail: String = ""
    //2. update 값을 받을 변수
    var paramUpdate: Bool = false
    //3. Interval 값을 받을 벼수
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
