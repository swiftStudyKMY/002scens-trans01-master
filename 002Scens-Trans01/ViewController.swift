//
//  ViewController.swift
//  002Scens-Trans01
//
//  Created by 김민영 on 11/1/19.
//  Copyright © 2019 김민영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        
        //Storyboard 상에 storyboard id를 찾아 instance화
        guard let uvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") else {
            return
        }
        
            //화면 전환 애니메이션 타입 설정
            uvc.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
                                       //UIModalTransitionStyle에 enum type으로 선언되있음.
                                       /*
                                        public enum UIModalTransitionStyle : Int {

                                            case coverVertical
                                                --> 아래에서 위로 새로운 화면 올라오면서 전환
                                                --> 애니메이션 설정 안할 경우 default
                                            case flipHorizontal
                                                --> 두 화면이 교차되면서 전화면 사라지면서 전환
                                            case crossDissolve
                                                --> 중앙 축을 기준으로 화면이 돌아가면서 전환
                                            @available(iOS 3.2, *)
                                            case partialCurl
                                                --> 오른쪽 아래 모서리에서 시작되서 페이지가 말리는 방식으로 화면 전환
                                        }
                                        */
            //화면 전환
            self.present(uvc, animated: true)
        
        
    }
    
}

