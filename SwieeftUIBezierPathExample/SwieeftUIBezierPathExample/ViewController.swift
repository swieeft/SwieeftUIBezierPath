//
//  ViewController.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = UIBezierPath()
        path.move(0, 300)
            .addLine(50, 300).addCircle(50, 310)
            .addLine(100, 300).addCircle(100, 310)
            .addLine(150, 300).addCircle(150, 310)
            .addLine(200, 300).addCircle(200, 310)
            .addLine(250, 300).addCircle(250, 310)
            .addLine(300, 300).addCircle(300, 310)
            .addLine(350, 300).addCircle(350, 310)
            .addLine(400, 300)
        
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.strokeEnd = 1
        layer.strokeColor = UIColor.black.cgColor
        layer.lineWidth = 3
        layer.fillColor = UIColor.clear.cgColor

        self.view.layer.addSublayer(layer)
        self.view.layoutIfNeeded()
        
        print(CFGetRetainCount(path))
    }
}

