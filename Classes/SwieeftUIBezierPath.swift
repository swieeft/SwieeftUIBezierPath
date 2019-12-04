//
//  UIBezierPathExtension.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

// MARK: Move Func
extension UIBezierPath: UIBezierPathMoveDelgate {
    public func move(_ x: CGFloat, _ y: CGFloat) -> Self {
        move(to: CGPoint(x: x, y: y))
        return self
    }
    
    public func move(_ x: Double, _ y: Double) -> Self {
        move(to: CGPoint(x: x, y: y))
        return self
    }
    
    public func move(_ x: Int, _ y: Int) -> Self {
        move(to: CGPoint(x: x, y: y))
        return self
    }
}

// MARK: AddLine Func
extension UIBezierPath: UIBezierPathLineDelgate {
    @discardableResult
    public func addLine(_ x: CGFloat, _ y: CGFloat) -> Self {
        addLine(to: CGPoint(x: x, y: y))
        return self
    }
    
    @discardableResult
    public func addLine(_ x: Double, _ y: Double) -> Self {
        addLine(to: CGPoint(x: x, y: y))
        return self
    }
    
    @discardableResult
    public func addLine(_ x: Int, _ y: Int) -> Self {
        addLine(to: CGPoint(x: x, y: y))
        return self
    }
}

// MARK: AddQuadCurve Func
extension UIBezierPath: UIBezierPathQuadCurveDelgate {
    
   internal struct QuadCurveModel {
        var path: UIBezierPath
        var toPoint: CGPoint
        var controlPoint: CGPoint

        static var shared = QuadCurveModel()

        private init() {
            path = UIBezierPath()
            toPoint = .zero
            controlPoint = .zero
        }
        
        mutating func clear() {
            path = UIBezierPath()
            toPoint = .zero
            controlPoint = .zero
        }
    }
    
    public func addQuadCurve(_ x: CGFloat, _ y: CGFloat) -> QuadCurveController {
        QuadCurveModel.shared.path = self
        QuadCurveModel.shared.toPoint = CGPoint(x: x, y: y)
        
        return QuadCurveController()
    }
    
    public func addQuadCurve(_ x: Double, _ y: Double) -> QuadCurveController {
        QuadCurveModel.shared.path = self
        QuadCurveModel.shared.toPoint = CGPoint(x: x, y: y)
        
        return QuadCurveController()
    }
    
    public func addQuadCurve(_ x: Int, _ y: Int) -> QuadCurveController {
        QuadCurveModel.shared.path = self
        QuadCurveModel.shared.toPoint = CGPoint(x: x, y: y)
        
        return QuadCurveController()
    }
    
    internal func addQuadCurve() -> Self {
        addQuadCurve(to: QuadCurveModel.shared.toPoint, controlPoint: QuadCurveModel.shared.controlPoint)
        QuadCurveModel.shared.clear()
        return self
    }
}
    
// MARK: AddCurve Func
extension UIBezierPath: UIBezierPathCurveDelgate {
    public func addCurve(_ x: CGFloat, _ y: CGFloat) -> CurveController1 {
        return CurveController1(self, x, y)
    }
    
    public func addCurve(_ x: Double, _ y: Double) -> CurveController1 {
        return CurveController1(self, x, y)
    }
    
    public func addCurve(_ x: Int, _ y: Int) -> CurveController1 {
        return CurveController1(self, x, y)
    }
    
    internal func addCurve(_ to: CGPoint, _ controlPoint1: CGPoint, _ controlPoint2: CGPoint) -> Self {
        addCurve(to: to, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        return self
    }
}

// MARK: AddCircle Func
extension UIBezierPath: UIBezierPathCircleDelgate {
    @discardableResult
    public func addCircle(_ x: CGFloat, _ y: CGFloat) -> Self {
        let center = CGPoint(x: x, y: y)
        let arcData = getArcData(center)
        addArc(withCenter: center, radius: arcData.radius, startAngle: arcData.start, endAngle: arcData.end, clockwise: true)
        return self
    }
    
    @discardableResult
    public func addCircle(_ x: Double, _ y: Double) -> Self {
        let center = CGPoint(x: x, y: y)
        let arcData = getArcData(center)
        addArc(withCenter: center, radius: arcData.radius, startAngle: arcData.start, endAngle: arcData.end, clockwise: true)
        return self
    }
    
    @discardableResult
    public func addCircle(_ x: Int, _ y: Int) -> Self {
        let center = CGPoint(x: x, y: y)
        let arcData = getArcData(center)
        addArc(withCenter: center, radius: arcData.radius, startAngle: arcData.start, endAngle: arcData.end, clockwise: true)
        return self
    }
    
    private func getArcData(_ center: CGPoint) -> (radius: CGFloat, start: CGFloat, end: CGFloat) {
        let xDist: CGFloat = currentPoint.x - center.x
        let yDist: CGFloat = currentPoint.y - center.y
        let radius: CGFloat = sqrt(xDist * xDist + yDist * yDist)

        let p1 = CGPoint(x: center.x + radius, y: center.y)
        
        let v1 = CGVector(dx: p1.x - center.x, dy: p1.y - center.y)
        let v2 = CGVector(dx: currentPoint.x - center.x, dy: currentPoint.y - center.y)
        let startAngle = atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx)
        let endAngle = startAngle + 6.3
        
        return (radius, startAngle, endAngle)
    }
}



