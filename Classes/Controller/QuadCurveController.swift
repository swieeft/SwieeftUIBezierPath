//
//  QuadCurveControlPoint.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct QuadCurveController {
    internal init() {
    }
    
    @discardableResult
    public func controlPoint(_ controlX: CGFloat, _ controlY: CGFloat) -> UIBezierPath {
        QuadCurveModel.shared.controlPoint = CGPoint(x: controlX, y: controlY)
        return QuadCurveModel.shared.path.addQuadCurve()
    }
    
    @discardableResult
    public func controlPoint(_ controlX: Double, _ controlY: Double) -> UIBezierPath {
        QuadCurveModel.shared.controlPoint = CGPoint(x: controlX, y: controlY)
        return QuadCurveModel.shared.path.addQuadCurve()
    }
    
    @discardableResult
    public func controlPoint(_ controlX: Int, _ controlY: Int) -> UIBezierPath {
        QuadCurveModel.shared.controlPoint = CGPoint(x: controlX, y: controlY)
        return QuadCurveModel.shared.path.addQuadCurve()
    }
}
