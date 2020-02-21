//
//  QuadCurveControlPoint.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct QuadCurveController {
    let path: UIBezierPath
    let toPoint: CGPoint

    internal init(path: UIBezierPath, toPoint: CGPoint) {
        self.path = path
        self.toPoint = toPoint
    }

    @discardableResult
    public func cp1(_ controlX: CGFloat, _ controlY: CGFloat) -> UIBezierPath {
        return path.addQuadCurve(toPoint: toPoint, controlPoint: CGPoint(x: controlX, y: controlY))
    }
    
    @discardableResult
    public func cp1(_ controlX: Double, _ controlY: Double) -> UIBezierPath {
        return path.addQuadCurve(toPoint: toPoint, controlPoint: CGPoint(x: controlX, y: controlY))
    }
    
    @discardableResult
    public func cp1(_ controlX: Int, _ controlY: Int) -> UIBezierPath {
        return path.addQuadCurve(toPoint: toPoint, controlPoint: CGPoint(x: controlX, y: controlY))
    }
}
