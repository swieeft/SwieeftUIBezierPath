//
//  CurveModel.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 09/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

internal struct CurveModel {
    var path: UIBezierPath
    var toPoint: CGPoint?
    var controlPoint1: CGPoint?
    var controlPoint2: CGPoint?

    static var shared = CurveModel()

    private init() {
        path = UIBezierPath()
    }
    
    mutating func clear() {
        path = UIBezierPath()
        toPoint = nil
        controlPoint1 = nil
        controlPoint2 = nil
    }
}
