//
//  ViewController.swift
//  snapkitTest
//
//  Created by 강병우 on 04/07/2019.
//  Copyright © 2019 강병우. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy var view1: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    lazy var view2: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    lazy var view3: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    lazy var view4: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    
    var label: UILabel = {
        var label = UILabel()
        label.text = "스냅킷 테스트"
        
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(view1)
        view.addSubview(label)
        view1.addSubview(view2)
        view1.addSubview(view3)
        view1.snp.makeConstraints { (a) in
            a.width.equalTo(view)
            a.height.equalTo(60)
            a.top.equalTo(44)
        }
        view2.snp.makeConstraints { (a) in
            a.width.equalTo(view1.snp.height)
            a.height.equalTo(view1.snp.height)
            a.left.equalTo(view1)
            a.top.equalTo(view1)
        }
        view3.snp.makeConstraints { (a) in
            a.width.equalTo(view1.snp.height)
            a.height.equalTo(view1.snp.height)
            a.right.equalTo(view1)
            a.top.equalTo(view1)
        }
        view.addSubview(view4)
        view4.snp.makeConstraints { (a) in
            a.width.equalTo(view).dividedBy(5)
            a.height.equalTo(view.snp.width).dividedBy(5)
            a.bottom.equalTo(view).offset(-44)
            a.left.equalTo(view)
        }
        
        label.snp.makeConstraints{
            $0.centerY.equalTo(view)
            $0.left.equalTo(view.snp.left).offset(10)
        }
    }


}

