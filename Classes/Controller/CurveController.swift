//
//  CurveControlPoint.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct CurveController1 {

    let path: UIBezierPath
    let toPoint: CGPoint

    internal init(path: UIBezierPath, toPoint: CGPoint) {
        self.path = path
        self.toPoint = toPoint
    }
    
    public func cp1(_ x: CGFloat, _ y: CGFloat) -> CurveController2 {
        return CurveController2(path: path, toPoint: toPoint, control1: CGPoint(x: x, y: y))
    }
    
    public func cp1(_ x: Double, _ y: Double) -> CurveController2 {
        return CurveController2(path: path, toPoint: toPoint, control1: CGPoint(x: x, y: y))
    }
    
    public func cp1(_ x: Int, _ y: Int) -> CurveController2 {
        return CurveController2(path: path, toPoint: toPoint, control1: CGPoint(x: x, y: y))
    }
}

public struct CurveController2 {
    let path: UIBezierPath
    let toPoint: CGPoint
    let control1: CGPoint

    internal init(path: UIBezierPath, toPoint: CGPoint, control1: CGPoint) {
        self.path = path
        self.toPoint = toPoint
        self.control1 = control1
    }
    
    @discardableResult
    public func cp2(_ x: CGFloat, _ y: CGFloat) -> UIBezierPath {
        return path.addCurve(toPoint: toPoint, control1: control1, control2: CGPoint(x: x, y: y))
    }
    
    @discardableResult
    public func cp2(_ x: Double, _ y: Double) -> UIBezierPath {
        return path.addCurve(toPoint: toPoint, control1: control1, control2: CGPoint(x: x, y: y))
    }
    
    @discardableResult
    public func cp2(_ x: Int, _ y: Int) -> UIBezierPath {
        return path.addCurve(toPoint: toPoint, control1: control1, control2: CGPoint(x: x, y: y))
    }
}

