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
        path.move(self.view.center.x, 100)
            .addStar(self.view.center.x, 70)
            .move(self.view.center.x, 90)
            .addQuadCurve(self.view.center.x - 50, 150).controlPoint(self.view.center.x - 30, 110)
            .move(self.view.center.x, 90)
            .addQuadCurve(self.view.center.x + 50, 150).controlPoint(self.view.center.x + 30, 110)
        
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

