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
//        path.move(view.center.x, view.center.y)
////            .addRect(width: 100, height: 200)
//            .addCircle(radius: 50)
//            .addCircle(radius: 40)
//            .addCircle(radius: 30)
//            .addCircle(radius: 20)
//            .addCircle(radius: 10)
//            .moveX(100)
//            .addCircle(radius: 50)
//            .addCircle(radius: 40)
//            .addCircle(radius: 30)
//            .addCircle(radius: 20)
//            .addCircle(radius: 10)
//            .moveY(100)
//            .addCircle(radius: 50)
//            .addCircle(radius: 40)
//            .addCircle(radius: 30)
//            .addCircle(radius: 20)
//            .addCircle(radius: 10)
//            .moveX(-100)
//            .addCircle(radius: 50)
//            .addCircle(radius: 40)
//            .addCircle(radius: 30)
//            .addCircle(radius: 20)
//            .addCircle(radius: 10)
//            .moveY(100)
//            .addCircle(radius: 50)
//            .addCircle(radius: 40)
//            .addCircle(radius: 30)
//            .addCircle(radius: 20)
//            .addCircle(radius: 10)
//            .moveX(100)
//            .addCircle(radius: 50)
//            .addCircle(radius: 40)
//            .addCircle(radius: 30)
//            .addCircle(radius: 20)
//            .addCircle(radius: 10)
        path.move(view.center.x, view.center.y - 100)
            .addLine(-100, 100)
            .addLine(200, 0)
            .addLine(-100, -100)
            .moveXY(50, 50)
            .addLine(0, -50)
            .addLine(20, 0)
            .addLine(0, 70)

        
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.strokeEnd = 1
        layer.strokeColor = UIColor.black.cgColor
        layer.lineWidth = 3
        layer.fillColor = UIColor.clear.cgColor

        self.view.layer.addSublayer(layer)
        self.view.layoutIfNeeded()
    }
}
