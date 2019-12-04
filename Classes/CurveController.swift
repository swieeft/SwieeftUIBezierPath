//
//  CurveControlPoint.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct CurveController1 {
    private unowned var path: UIBezierPath
    private var toPoint: CGPoint
    
    internal init(_ path: UIBezierPath, _ x: CGFloat, _ y: CGFloat) {
        self.path = path
        toPoint = CGPoint(x: x, y: y)
    }
    
    internal init(_ path: UIBezierPath, _ x: Double, _ y: Double) {
        self.path = path
        toPoint = CGPoint(x: x, y: y)
    }
    
    internal init(_ path: UIBezierPath, _ x: Int, _ y: Int) {
        self.path = path
        toPoint = CGPoint(x: x, y: y)
    }
    
    public func controlPoint1(_ x: CGFloat, _ y: CGFloat) -> CurveController2 {
        let point = CGPoint(x: x, y: y)
        return CurveController2(path, toPoint, point)
    }
    
    public func controlPoint1(_ x: Double, _ y: Double) -> CurveController2 {
        let point = CGPoint(x: x, y: y)
        return CurveController2(path, toPoint, point)
    }
    
    public func controlPoint1(_ x: Int, _ y: Int) -> CurveController2 {
        let point = CGPoint(x: x, y: y)
        return CurveController2(path, toPoint, point)
    }
}

public struct CurveController2 {
    private unowned var path: UIBezierPath
    private var toPoint: CGPoint
    private var controlPoint1: CGPoint
    
    internal init(_ path: UIBezierPath, _ toPoint: CGPoint, _ controlPoint1: CGPoint) {
        self.toPoint = toPoint
        self.controlPoint1 = controlPoint1
        self.path = path
    }
    
    @discardableResult
    public func controlPoint2(_ x: CGFloat, _ y: CGFloat) -> UIBezierPath {
        let point = CGPoint(x: x, y: y)
        return path.addCurve(toPoint, controlPoint1, point)
    }
    
    @discardableResult
    public func controlPoint2(_ x: Double, _ y: Double) -> UIBezierPath {
        let point = CGPoint(x: x, y: y)
        return path.addCurve(toPoint, controlPoint1, point)
    }
    
    @discardableResult
    public func controlPoint2(_ x: Int, _ y: Int) -> UIBezierPath {
        let point = CGPoint(x: x, y: y)
        return path.addCurve(toPoint, controlPoint1, point)
    }
}

