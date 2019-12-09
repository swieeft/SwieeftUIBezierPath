//
//  CurveControlPoint.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct CurveController1 {
    internal init() {
        
    }
    
    public func controlPoint1(_ x: CGFloat, _ y: CGFloat) -> CurveController2 {
        CurveModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return CurveController2()
    }
    
    public func controlPoint1(_ x: Double, _ y: Double) -> CurveController2 {
        CurveModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return CurveController2()
    }
    
    public func controlPoint1(_ x: Int, _ y: Int) -> CurveController2 {
        CurveModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return CurveController2()
    }
}

public struct CurveController2 {
    internal init() {
        
    }
    
    @discardableResult
    public func controlPoint2(_ x: CGFloat, _ y: CGFloat) -> UIBezierPath {
        CurveModel.shared.controlPoint2 = CGPoint(x: x, y: y)
        return CurveModel.shared.path.addCurve()
    }
    
    @discardableResult
    public func controlPoint2(_ x: Double, _ y: Double) -> UIBezierPath {
        CurveModel.shared.controlPoint2 = CGPoint(x: x, y: y)
        return CurveModel.shared.path.addCurve()
    }
    
    @discardableResult
    public func controlPoint2(_ x: Int, _ y: Int) -> UIBezierPath {
        CurveModel.shared.controlPoint2 = CGPoint(x: x, y: y)
        return CurveModel.shared.path.addCurve()
    }
}

