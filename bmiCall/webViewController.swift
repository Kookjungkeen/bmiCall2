//
//  webViewController.swift
//  bmiCall
//
//  Created by 국정근 on 2022/01/27.
//

import UIKit
import WebKit

class webViewController: UIViewController {
    
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goNaver(_ sender: UIButton) {
        //URL 만들기
        guard let url = URL(string: "https://m.naver.com") else{return}
        let request = URLRequest(url: url)
        webView?.load(request)
        //webView: Outlet명
        //guard문 <불리언 표현식> else { 표현식이 거짓일 경우에 실행될 코드
        //<코드 블록을 빠져 나갈 구문>
        //} 표현식이 참일 경우에 실행되는 코드
        
    }
    
    }

