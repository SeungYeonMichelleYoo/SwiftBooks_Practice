//
//  AddViewController.swift
//  Table
//
//  Created by SeungYeon Yoo on 2022/05/07.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let MAX_ARRAY_NUM = 3
    let PICKER_VIEW_COLUMN = 1
    //피커뷰 룰렛의 높이 변경
    let PICKER_VIEW_HEIGHT:CGFloat = 40
    var imageArray = [UIImage?]()
    var imageFileName = ["cart.png", "clock.png", "pencil.png"]
    var fileName = ""
    
    @IBOutlet var tfAddItem: UITextField!
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image!) // *****여기서 왜 image 다음에 ! 를 써야하는가??
        }
        
        imageView.image = imageArray[0]
        // 아래 한 줄은 내가 생각하지 못한 부분.
        fileName = imageFileName[0]
    }
    
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append(fileName) //내가 틀린 부분. imageView로 넣으려고 했더니, UIImageView 형태가 아니라 String이 들어가야한다고 함.
        tfAddItem.text=""
        _ = navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // 피커뷰에게 컴포넌트의 수를 정수 값으로 넘겨주는 델리게이트 메서드
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    // 피커뷰에게 컴포넌트의 열의 개수를 정수 값으로 넘겨준다.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    // 피커뷰에게 컴포넌트의 열의 개수를 정수 값으로 넘겨준다. -> 룰렛의 높이 변경.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }

    // titleForRow 인수를 가지는 델리게이트 메서드. 피커뷰에게 컴포넌트의 각 열의 타이틀을 문자열 값으로 넘겨준다. (파일명 넘겨줌) - titleForRow
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    // 피커뷰에 파일명 대신 이미지 출력하기 - viewForRow
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x:0, y:0, width:30, height: 30)
        
        return imageView
    }
    
    // 선택한 이미지를 이미지 뷰에 나타내준다.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imageView.image = imageArray[row]
    }
    
}
