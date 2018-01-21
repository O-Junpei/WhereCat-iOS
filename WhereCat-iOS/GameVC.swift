//
//  GameVC.swift
//  WhereCat-iOS
//
//  Created by junpei ono on 2018/01/22.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class GameVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //bg
        let bg = UIImageView()
        bg.image = UIImage(named:"back")
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        
    }
}
