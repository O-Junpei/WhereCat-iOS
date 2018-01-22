//
//  GameVC.swift
//  WhereCat-iOS
//
//  Created by junpei ono on 2018/01/22.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class GameVC: UIViewController {
    
    var viewHeight:CGFloat!
    var viewWidth:CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        viewHeight = self.view.frame.height
        viewWidth = self.view.frame.width

        
        //bg
        let bg = UIImageView()
        bg.image = UIImage(named:"back")
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        
        
        //
        let object_a = UIButton()
        object_a.frame = CGRect(x: viewWidth*0.45, y: 0, width: viewWidth*0.3, height: viewHeight*0.13)
        object_a.setImage(UIImage(named:"object_a"), for: UIControlState.normal)
        object_a.imageView?.contentMode = .scaleAspectFit
        //object_a.backgroundColor = UIColor.blue
        object_a.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_a)
        
        //
        let object_b = UIButton()
        object_b.frame = CGRect(x: viewWidth*0.8, y: viewWidth*0.1, width: viewWidth*0.2, height: viewHeight*0.15)
        object_b.setImage(UIImage(named:"object_b"), for: UIControlState.normal)
        object_b.imageView?.contentMode = .scaleAspectFit
        //object_b.backgroundColor = UIColor.blue
        object_b.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_b)
        
        //
        let object_c = UIButton()
        object_c.frame = CGRect(x: viewWidth*0.8, y: viewHeight*0.2, width: viewWidth*0.2, height: viewHeight*0.3)
        object_c.setImage(UIImage(named:"object_c"), for: UIControlState.normal)
        object_c.imageView?.contentMode = .scaleAspectFit
        //object_c.backgroundColor = UIColor.blue
        object_c.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_c)
        
        //
        let object_d = UIButton()
        object_d.frame = CGRect(x: viewWidth*0.8, y: viewHeight*0.5, width: viewWidth*0.25, height: viewHeight*0.3)
        object_d.setImage(UIImage(named:"object_d"), for: UIControlState.normal)
        object_d.imageView?.contentMode = .scaleAspectFit
        //object_d.backgroundColor = UIColor.blue
        object_d.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_d)
        
        //
        let object_e = UIButton()
        object_e.frame = CGRect(x: viewWidth*0.4, y: viewHeight*0.2, width: viewWidth*0.25, height: viewHeight*0.15)
        object_e.setImage(UIImage(named:"object_e"), for: UIControlState.normal)
        object_e.imageView?.contentMode = .scaleAspectFit
        //object_e.backgroundColor = UIColor.red
        object_e.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_e)
        
        //
        let object_f = UIButton()
        object_f.frame = CGRect(x: viewWidth*0.35, y: viewHeight*0.4, width: viewWidth*0.35, height: viewHeight*0.35)
        object_f.setImage(UIImage(named:"object_f"), for: UIControlState.normal)
        object_f.imageView?.contentMode = .scaleAspectFit
        //object_f.backgroundColor = UIColor.blue
        object_f.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_f)
        
        //
        let object_g = UIButton()
        object_g.frame = CGRect(x: viewWidth*0.35, y: viewHeight*0.85, width: viewWidth*0.4, height: viewHeight*0.15)
        object_g.setImage(UIImage(named:"object_g"), for: UIControlState.normal)
        object_g.imageView?.contentMode = .scaleAspectFit
        //object_g.backgroundColor = UIColor.blue
        object_g.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_g)
        
        //
        let object_h = UIButton()
        object_h.frame = CGRect(x: 0, y: viewHeight*0.1, width: viewWidth*0.3, height: viewHeight*0.4)
        object_h.setImage(UIImage(named:"object_h"), for: UIControlState.normal)
        object_h.imageView?.contentMode = .scaleAspectFit
        //object_h.backgroundColor = UIColor.blue
        object_h.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_h)
        
        
        //
        let object_i = UIButton()
        object_i.frame = CGRect(x: 0, y: viewHeight*0.5, width: viewWidth*0.2, height: viewHeight*0.25)
        object_i.setImage(UIImage(named:"object_i"), for: UIControlState.normal)
        object_i.imageView?.contentMode = .scaleAspectFit
        //object_i.backgroundColor = UIColor.blue
        object_i.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_i)
        
        //
        let object_j = UIButton()
        object_j.frame = CGRect(x: 0, y: viewHeight*0.75, width: viewWidth*0.2, height: viewHeight*0.2)
        object_j.setImage(UIImage(named:"object_j"), for: UIControlState.normal)
        object_j.imageView?.contentMode = .scaleAspectFit
        //object_j.backgroundColor = UIColor.blue
        object_j.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_j)
    }
    
    //basicボタンが押されたら呼ばれます
    @objc func startBtnClicked(sender: UIButton){
        print("basicButtonBtnClicked")

    }
}
