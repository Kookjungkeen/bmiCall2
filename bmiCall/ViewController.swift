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
        let height = Double(txtHeight.text!)!
        //txtHeight.text! 옵셔널 String이기 때문에 옵셔널 언래핑 !, Double(txtHeight.text!)! String형을 Double 형으로 변환 해주기 위해 언래핑!
        let weight = Double(txtWeight.text!)!
        print(height,weight)
        
        let bmi = weight/(height*weight*0.0001)
        let shortendBmi = String(format: "%.1f", bmi)
        var body = ""
        if bmi >= 40{
            body = "3단계 미만"
        } else if bmi >= 30 && bmi < 40 {
            body = "2단계 미만"
        }
        else if bmi >= 18.5 && bmi < 25 {
            body = "정상"
        } else {
          body = "저체중"
        }
        print("BMI:\(shortendBmi),판정:\(body)")

    }
    
}

