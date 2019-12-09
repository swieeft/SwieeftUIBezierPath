//
//  QuadCurveModel.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 09/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

internal struct QuadCurveModel {
     var path: UIBezierPath
     var toPoint: CGPoint?
     var controlPoint: CGPoint?

     static var shared = QuadCurveModel()

     private init() {
         path = UIBezierPath()
     }
     
     mutating func clear() {
         path = UIBezierPath()
        toPoint = nil
        controlPoint = nil
     }
 }
