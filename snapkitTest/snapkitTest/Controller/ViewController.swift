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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let box = UIView()
        superview.addSubview(box)
        
        box.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(superview).offset(20)
            make.left.equalTo(superview).offset(20)
            make.bottom.equalTo(superview).offset(-20)
            make.right.equalTo(superview).offset(-20)
        }
        
    }


}

