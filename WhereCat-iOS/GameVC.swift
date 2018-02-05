//
//  GameVC.swift
//  WhereCat-iOS
//
//  Created by junpei ono on 2018/01/22.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

enum Object: Int {
    case A
    case B
    case C
    case D
    case E
    case F
    case G
    case H
    case I
    case J
}


class GameVC: UIViewController {
    
    var viewWidth:CGFloat!
    var viewHeight:CGFloat!

    //
    var startView:UIButton!
    
    // catsView
    var catsImgView:UIImageView!
    var catsWidth:CGFloat!
    var catsHeight:CGFloat!
    
    var objects:Array = [Object.A, Object.B, Object.C, Object.D, Object.E, Object.F, Object.G, Object.H, Object.I, Object.J]
    var objectsNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        //
        viewWidth = self.view.frame.width
        viewHeight = self.view.frame.height

        catsWidth = self.viewWidth * 0.1
        catsHeight = self.viewHeight * 0.1

        setObjects()
        
        //
        catsImgView = UIImageView()
        catsImgView.image = UIImage(named:"cats")
        catsImgView.frame = CGRect(x: viewWidth*0.3, y: viewHeight*0.3, width: viewWidth*0.1, height: viewHeight*0.1)
        catsImgView.contentMode = .scaleAspectFill
        self.view.addSubview(catsImgView)
        
        
        startView = UIButton()
        startView.frame = self.view.frame
        
        let tapStartLabel = UILabel()
        tapStartLabel.text = "画面タップでスタートです"
        tapStartLabel.frame = CGRect(x: 0, y: viewHeight*0.4, width: viewWidth, height: viewHeight*0.1)
        tapStartLabel.backgroundColor = UIColor.purple
        tapStartLabel.textColor = UIColor.white
        tapStartLabel.textAlignment = NSTextAlignment.center
        startView.addSubview(tapStartLabel)
        startView.addTarget(self, action: #selector(taupStartBtn(sender:)), for:.touchUpInside)
        self.view.addSubview(startView)
    }
    
    //basicボタンが押されたら呼ばれます
    @objc func taupStartBtn(sender: UIButton){
        sender.removeFromSuperview()
        
        objectsNum = 0
        goObject(object: objects[0])
    }
    
    func goObject(object:Object) {
        
        let position = getPosition(object: object)
        let x = viewWidth * position[0] / 100
        let y = viewHeight * position[1] / 100
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            
            self.catsImgView.frame = CGRect(x: x, y: y, width: self.catsWidth, height: self.catsHeight)
            self.objectsNum = self.objectsNum + 1
            
        },completion: { _ in
            // 完了時の処理
            if self.objectsNum == self.objects.count{
                return
            }
            self.goObject(object: self.objects[self.objectsNum])
        })
    }
    
    
    func getPosition(object:Object) -> Array<CGFloat>{
        
        // return [x, y]
        switch object {
        case .A:
            return [53.0, 2.0]
        case .B:
            return [84.0, 4.0]
        case .C:
            return [84.0, 25.0]
        case .D:
            return [86.0, 60.0]
        case .E:
            return [46.0, 20.0]
        case .F:
            return [45.0, 50.0]
        case .G:
            return [45.0, 85.0]
        case .H:
            return [10.0, 15.0]
        case .I:
            return [5.0, 55.0]
        case .J:
            return [5.0, 80.0]
        }
    }
    
    //basicボタンが押されたら呼ばれます
    @objc func startBtnClicked(sender: UIButton){
        print("basicButtonBtnClicked")
    }
    
    //場所、
    func setObjects(){
        
        //bg
        let bg = UIImageView()
        bg.image = UIImage(named:"back")
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        
        
        // object_a
        let object_a = UIButton()
        object_a.frame = CGRect(x: viewWidth*0.45, y: 0, width: viewWidth*0.3, height: viewHeight*0.13)
        object_a.setImage(UIImage(named:"object_a"), for: UIControlState.normal)
        object_a.imageView?.contentMode = .scaleAspectFit
        //object_a.backgroundColor = UIColor.blue
        object_a.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_a)
        
        // object_b
        let object_b = UIButton()
        object_b.frame = CGRect(x: viewWidth*0.8, y: viewWidth*0.1, width: viewWidth*0.2, height: viewHeight*0.15)
        object_b.setImage(UIImage(named:"object_b"), for: UIControlState.normal)
        object_b.imageView?.contentMode = .scaleAspectFit
        //object_b.backgroundColor = UIColor.blue
        object_b.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_b)
        
        // object_c
        let object_c = UIButton()
        object_c.frame = CGRect(x: viewWidth*0.8, y: viewHeight*0.2, width: viewWidth*0.2, height: viewHeight*0.3)
        object_c.setImage(UIImage(named:"object_c"), for: UIControlState.normal)
        object_c.imageView?.contentMode = .scaleAspectFit
        //object_c.backgroundColor = UIColor.blue
        object_c.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_c)
        
        // object_d
        let object_d = UIButton()
        object_d.frame = CGRect(x: viewWidth*0.8, y: viewHeight*0.5, width: viewWidth*0.25, height: viewHeight*0.3)
        object_d.setImage(UIImage(named:"object_d"), for: UIControlState.normal)
        object_d.imageView?.contentMode = .scaleAspectFit
        //object_d.backgroundColor = UIColor.blue
        object_d.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_d)
        
        // object_e
        let object_e = UIButton()
        object_e.frame = CGRect(x: viewWidth*0.4, y: viewHeight*0.2, width: viewWidth*0.25, height: viewHeight*0.15)
        object_e.setImage(UIImage(named:"object_e"), for: UIControlState.normal)
        object_e.imageView?.contentMode = .scaleAspectFit
        //object_e.backgroundColor = UIColor.red
        object_e.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_e)
        
        // object_f
        let object_f = UIButton()
        object_f.frame = CGRect(x: viewWidth*0.35, y: viewHeight*0.4, width: viewWidth*0.35, height: viewHeight*0.35)
        object_f.setImage(UIImage(named:"object_f"), for: UIControlState.normal)
        object_f.imageView?.contentMode = .scaleAspectFit
        object_f.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_f)
        
        // object_g
        let object_g = UIButton()
        object_g.frame = CGRect(x: viewWidth*0.35, y: viewHeight*0.85, width: viewWidth*0.4, height: viewHeight*0.15)
        object_g.setImage(UIImage(named:"object_g"), for: UIControlState.normal)
        object_g.imageView?.contentMode = .scaleAspectFit
        object_g.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_g)
        
        // object_h
        let object_h = UIButton()
        object_h.frame = CGRect(x: 0, y: viewHeight*0.1, width: viewWidth*0.3, height: viewHeight*0.4)
        object_h.setImage(UIImage(named:"object_h"), for: UIControlState.normal)
        object_h.imageView?.contentMode = .scaleAspectFit
        object_h.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_h)
        
        
        // object_i
        let object_i = UIButton()
        object_i.frame = CGRect(x: 0, y: viewHeight*0.5, width: viewWidth*0.2, height: viewHeight*0.25)
        object_i.setImage(UIImage(named:"object_i"), for: UIControlState.normal)
        object_i.imageView?.contentMode = .scaleAspectFit
        object_i.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_i)
        
        // object_j
        let object_j = UIButton()
        object_j.frame = CGRect(x: 0, y: viewHeight*0.75, width: viewWidth*0.2, height: viewHeight*0.2)
        object_j.setImage(UIImage(named:"object_j"), for: UIControlState.normal)
        object_j.imageView?.contentMode = .scaleAspectFit
        object_j.addTarget(self, action: #selector(startBtnClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(object_j)
    }
}
