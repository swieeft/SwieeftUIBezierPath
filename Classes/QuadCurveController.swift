//
//  QuadCurveControlPoint.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct QuadCurveController {
//    private unowned var path: UIBezierPath
//    private var toPoint: CGPoint
    
//    internal init(_ path: UIBezierPath, _ x: CGFloat, _ y: CGFloat) {
//        self.path = path
//        toPoint = CGPoint(x: x, y: y)
//    }
    
//    internal init(_ path: UIBezierPath, _ x: Double, _ y: Double) {
//        self.path = path
//        toPoint = CGPoint(x: x, y: y)
//    }
    
//    internal init(_ path: UIBezierPath, _ x: Int, _ y: Int) {
//        self.path = path
//        toPoint = CGPoint(x: x, y: y)
//    }
    
    internal init() {
//        self.path = path
    }
    
    @discardableResult
    public func controlPoint(_ controlX: CGFloat, _ controlY: CGFloat) -> UIBezierPath {
        UIBezierPath.QuadCurveModel.shared.controlPoint = CGPoint(x: controlX, y: controlY)
        return UIBezierPath.QuadCurveModel.shared.path.addQuadCurve()
    }
    
    @discardableResult
    public func controlPoint(_ controlX: Double, _ controlY: Double) -> UIBezierPath {
        UIBezierPath.QuadCurveModel.shared.controlPoint = CGPoint(x: controlX, y: controlY)
        return UIBezierPath.QuadCurveModel.shared.path.addQuadCurve()
    }
    
    @discardableResult
    public func controlPoint(_ controlX: Int, _ controlY: Int) -> UIBezierPath {
        UIBezierPath.QuadCurveModel.shared.controlPoint = CGPoint(x: controlX, y: controlY)
        return UIBezierPath.QuadCurveModel.shared.path.addQuadCurve()
    }
}
