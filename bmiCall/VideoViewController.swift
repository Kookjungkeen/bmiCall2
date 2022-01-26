//
//  VideoViewController.swift
//  bmiCall
//
//  Created by 국정근 on 2022/01/26.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playVideo(_ sender: UIButton) {
        
        let file:String? = Bundle.main.path(forResource: "bmi", ofType: "mp4")
        //비디오 파일명을 사용하여 비디오가 저장된 앱 내부의 파일 경로를 받아온다.
        let url = NSURL(fileURLWithPath: file!)
        // 앱 내부의 파일명을 NSURL 형식으로 변경
        let playerController = AVPlayerViewController()
        // AVPlayController의 인스턴스 생성
        let player = AVPlayer(url: url as URL)
        // AVPlayerViewcontroller의 player 속성에 위에서 생성한 AVPlayer 인스턴스 할당
        playerController.player = player
        self.present(playerController, animated:  true)
        player.play() // 비디오 재생
    }

}
