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
        let url =
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
