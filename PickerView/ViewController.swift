//
//  ViewController.swift
//  PickerView
//
//  Created by SeungYeon Yoo on 2022/05/03.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    var imageArray = [UIImage?]()
    var imageFileName = [ "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg" ]

    @IBOutlet var pickerImage: UIPickerView!
    
    @IBOutlet var lblImageFileName: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    //피커뷰의 컴포넌트 수 설정
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    //피커뷰의 높이 설정
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    //피커뷰의 개수 설정
    func pickerView(_ pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    

    
    //titleForRow 인수를 가지는 델리게이트 메서드: 각 row에 대한 타이틀을 정의하는 메서드.
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    //피커뷰의 각 row 의 view 설정
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x:0, y:0, width:100, height:150)
        
        return imageView
    }
    
    // 선택한 이미지 이름 레이블에 출력되게 하기 & 이미지 출력
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
}

