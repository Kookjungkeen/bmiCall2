//
//  ViewController.swift
//  bmiCall
//
//  Created by 국정근 on 2022/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtHeight: UITextField!
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calcBmi(_ sender: UIButton) {
        // 텍스트가 없을 시 사용 코드
        if txtHeight.text == "" || txtWeight.text == "" {
            print("input error") // 출력시 호출
            lblResult.text = "키와 체중을 입력하세요" // 텍스트가 없을 시 값 호출
            return
        }
        else{
            
        let height = Double(txtHeight.text!)!
        //txtHeight.text! 옵셔널 String이기 때문에 옵셔널 언래핑 !, Double(txtHeight.text!)! String형을 Double 형으로 변환 해주기 위해 언래핑!
        let weight = Double(txtWeight.text!)!
       // print(height,weight), 값이 제대로 나오는 것을 확인 후 주석처리
      
        
        
        let bmi = weight/(height*weight*0.0001)
        let shortendBmi = String(format: "%.1f", bmi)
        var body = ""
            var color = UIColor.white
        if bmi >= 40{
            color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "3단계 미만"
        } else if bmi >= 30 && bmi < 40 {
            color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "2단계 미만"
        } else if bmi >= 25 && bmi < 30 {
            color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "1단계 미만"
                    
        } else if bmi >= 18.5 && bmi < 25 {
            color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            body = "정상"
        } else {
            color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
          body = "저체중"
        }
       // print("BMI:\(shortendBmi),판정:\(body)"), 값이 제대로 나오는 것을 확인 후 주석 처리
            lblResult.backgroundColor = color
            //lblResult background 색깔로  color지정하기
            lblResult.text = "BMI:\(shortendBmi),판정:\(body)"
    }
}
}
