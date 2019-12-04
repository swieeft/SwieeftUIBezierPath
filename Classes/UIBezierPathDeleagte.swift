//
//  UIBezierPathDeleagte.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

internal protocol UIBezierPathMoveDelgate {
    func move(_ x: CGFloat, _ y: CGFloat) -> Self
    func move(_ x: Double, _ y: Double) -> Self
    func move(_ x: Int, _ y: Int) -> Self
}

internal protocol UIBezierPathLineDelgate {
    func addLine(_ x: CGFloat, _ y: CGFloat) -> Self
    func addLine(_ x: Double, _ y: Double) -> Self
    func addLine(_ x: Int, _ y: Int) -> Self
}

internal protocol UIBezierPathQuadCurveDelgate {
    func addQuadCurve(_ x: CGFloat, _ y: CGFloat) -> QuadCurveController
    func addQuadCurve(_ x: Double, _ y: Double) -> QuadCurveController
    func addQuadCurve(_ x: Int, _ y: Int) -> QuadCurveController
    func addQuadCurve() -> Self
}

internal protocol UIBezierPathCurveDelgate {
    func addCurve(_ x: CGFloat, _ y: CGFloat) -> CurveController1
    func addCurve(_ x: Double, _ y: Double) -> CurveController1
    func addCurve(_ x: Int, _ y: Int) -> CurveController1
    func addCurve(_ to: CGPoint, _ controlPoint1: CGPoint, _ controlPoint2: CGPoint) -> Self
}

internal protocol UIBezierPathCircleDelgate {
    func addCircle(_ x: CGFloat, _ y: CGFloat) -> Self
    func addCircle(_ x: Double, _ y: Double) -> Self
    func addCircle(_ x: Int, _ y: Int) -> Self
}
