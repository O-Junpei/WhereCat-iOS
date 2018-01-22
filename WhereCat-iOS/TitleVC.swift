//
//  ViewController.swift
//  WhereCat-iOS
//
//  Created by junpei ono on 2018/01/22.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class TitleVC: UIViewController {
    
    var viewHeight:CGFloat!
    var viewWidth:CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewHeight = self.view.frame.height
        viewWidth = self.view.frame.width
        
        let logo = UIImageView()
        logo.image = UIImage(named:"logo")
        logo.frame = CGRect(x: viewWidth*0.1, y: viewHeight*0.1, width: viewWidth*0.8, height: viewHeight*0.1)
        logo.contentMode = .scaleAspectFit
        self.view.addSubview(logo)
        
        let chara = UIImageView()
        chara.image = UIImage(named:"chara")
        chara.frame = CGRect(x: 0, y: viewHeight*0.3, width: viewWidth, height: viewHeight*0.4)
        chara.contentMode = .scaleAspectFit
        self.view.addSubview(chara)
        
        let startBtn = UIButton()
        startBtn.frame = CGRect(x: viewWidth*0.35, y: viewHeight*0.7, width: viewWidth*0.3, height: viewHeight*0.1)
        startBtn.setImage(UIImage(named:"start"), for: UIControlState.normal)
        startBtn.imageView?.contentMode = .scaleAspectFit
        startBtn.backgroundColor = UIColor.blue
        startBtn.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(startBtn)

    }
    //basicボタンが押されたら呼ばれます
    @objc func startBtnClicked(sender: UIButton){
        print("basicButtonBtnClicked")
        
        let gameVC = GameVC()
        gameVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(gameVC, animated: true, completion: nil)
    }
}

