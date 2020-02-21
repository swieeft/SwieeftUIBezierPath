//
//  UIBezierPathExtension.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 04/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

// MARK: Move Func
extension UIBezierPath {
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

    public func moveX(_ x: CGFloat) -> Self {
        move(to: CGPoint(x: currentPoint.x + x, y: currentPoint.y))
        return self
    }

    public func moveX(_ x: Double) -> Self {
        move(to: CGPoint(x: Double(currentPoint.x) + x, y: Double(currentPoint.y)))
        return self
    }

    public func moveX(_ x: Int) -> Self {
        move(to: CGPoint(x: Int(currentPoint.x) + x, y: Int(currentPoint.y)))
        return self
    }

    public func moveY(_ y: CGFloat) -> Self {
        move(to: CGPoint(x: currentPoint.x, y: currentPoint.y + y))
        return self
    }

    public func moveY(_ y: Double) -> Self {
        move(to: CGPoint(x: Double(currentPoint.x), y: Double(currentPoint.y) + y))
        return self
    }

    public func moveY(_ y: Int) -> Self {
        move(to: CGPoint(x: Int(currentPoint.x), y: Int(currentPoint.y) + y))
        return self
    }

    public func moveXY(_ x: CGFloat, _ y: CGFloat) -> Self {
        move(to: CGPoint(x: currentPoint.x + x, y: currentPoint.y + y))
        return self
    }

    public func moveXY(_ x: Double, _ y: Double) -> Self {
        move(to: CGPoint(x: Double(currentPoint.x) + x, y: Double(currentPoint.y) + y))
        return self
    }

    public func moveXY(_ x: Int, _ y: Int) -> Self {
        move(to: CGPoint(x: Int(currentPoint.x) + x, y: Int(currentPoint.y) + y))
        return self
    }
}

// MARK: AddLine Func
extension UIBezierPath {
    @discardableResult
    public func addLine(_ x: CGFloat, _ y: CGFloat) -> Self {
        addLine(to: CGPoint(x: currentPoint.x + x, y: currentPoint.y + y))
        return self
    }
    
    @discardableResult
    public func addLine(_ x: Double, _ y: Double) -> Self {
        addLine(to: CGPoint(x: Double(currentPoint.x) + x, y: Double(currentPoint.y) + y))
        return self
    }
    
    @discardableResult
    public func addLine(_ x: Int, _ y: Int) -> Self {
        addLine(to: CGPoint(x: Int(currentPoint.x) + x, y: Int(currentPoint.y) + y))
        return self
    }
}

// MARK: AddQuadCurve Func
extension UIBezierPath {
    public func addQuadCurve(_ x: CGFloat, _ y: CGFloat) -> QuadCurveController {
        return QuadCurveController(path: self, toPoint: CGPoint(x: x, y: y))
    }
    
    public func addQuadCurve(_ x: Double, _ y: Double) -> QuadCurveController {
        return QuadCurveController(path: self, toPoint: CGPoint(x: x, y: y))
    }
    
    public func addQuadCurve(_ x: Int, _ y: Int) -> QuadCurveController {
        return QuadCurveController(path: self, toPoint: CGPoint(x: x, y: y))
    }
    
    internal func addQuadCurve(toPoint: CGPoint, controlPoint: CGPoint) -> Self {
        addQuadCurve(to: toPoint, controlPoint: controlPoint)
        return self
    }
}
    
// MARK: AddCurve Func
extension UIBezierPath {
    public func addCurve(_ x: CGFloat, _ y: CGFloat) -> CurveController1 {
        return CurveController1(path: self, toPoint: CGPoint(x: x, y: y))
    }
    
    public func addCurve(_ x: Double, _ y: Double) -> CurveController1 {
        return CurveController1(path: self, toPoint: CGPoint(x: x, y: y))
    }
    
    public func addCurve(_ x: Int, _ y: Int) -> CurveController1 {
        return CurveController1(path: self, toPoint: CGPoint(x: x, y: y))
    }
    
    internal func addCurve(toPoint: CGPoint, control1: CGPoint, control2: CGPoint) -> Self {
        addCurve(to: toPoint, controlPoint1: control1, controlPoint2: control2)
        return self
    }
}

// MARK: AddArc Func
extension UIBezierPath {
    public func addArc(_ x: CGFloat, _ y: CGFloat) -> ArcPoint1Controller {
        return ArcPoint1Controller(path: self, center: CGPoint(x: x, y: y))
    }
    
    public func addArc(_ x: Double, _ y: Double) -> ArcPoint1Controller {
        return ArcPoint1Controller(path: self, center: CGPoint(x: x, y: y))
    }
    
    public func addArc(_ x: Int, _ y: Int) -> ArcPoint1Controller {
        return ArcPoint1Controller(path: self, center: CGPoint(x: x, y: y))
    }
    
    internal func addArc(center: CGPoint, radius: CGFloat, start: CGFloat, end: CGFloat, clockwise: Bool) -> Self {
        addArc(withCenter: center, radius: radius, startAngle: start, endAngle: end, clockwise: clockwise)
        return self
    }
}

// MARK: AddCircle Func
extension UIBezierPath {
    @discardableResult
    public func addCircle(radius: CGFloat) -> Self {
        let center = currentPoint

        return moveX(radius)
            .addArc(center: center, radius: radius, start: 0, end: 2 * .pi, clockwise: true)
            .moveX(-radius)
    }

    @discardableResult
    public func addCircle(_ x: CGFloat, _ y: CGFloat) -> Self {
        let center = CGPoint(x: x, y: y)
        let arcData = getCircleData(center)
        addArc(withCenter: center, radius: arcData.radius, startAngle: arcData.start, endAngle: arcData.end, clockwise: true)
        return self
    }
    
    @discardableResult
    public func addCircle(_ x: Double, _ y: Double) -> Self {
        let center = CGPoint(x: x, y: y)
        let arcData = getCircleData(center)
        addArc(withCenter: center, radius: arcData.radius, startAngle: arcData.start, endAngle: arcData.end, clockwise: true)
        return self
    }
    
    @discardableResult
    public func addCircle(_ x: Int, _ y: Int) -> Self {
        let center = CGPoint(x: x, y: y)
        let arcData = getCircleData(center)
        addArc(withCenter: center, radius: arcData.radius, startAngle: arcData.start, endAngle: arcData.end, clockwise: true)
        return self
    }
    
    private func getCircleData(_ center: CGPoint) -> (radius: CGFloat, start: CGFloat, end: CGFloat) {
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

// MARK: ETC Func
extension UIBezierPath {
    @discardableResult
    public func addStar(_ x: CGFloat, _ y: CGFloat) -> Self {
        let center = CGPoint(x: x, y: y)
        let xDist: CGFloat = currentPoint.x - center.x
        let yDist: CGFloat = currentPoint.y - center.y
        let radius: CGFloat = sqrt(xDist * xDist + yDist * yDist)
        
        return move(center.x, center.y - radius)
                .addLine(center.x - ((radius / 4) * 3), center.y + radius)
                .addLine(center.x + radius, center.y - (radius / 4))
                .addLine(center.x - radius, center.y - (radius / 4))
                .addLine(center.x + ((radius / 4) * 3), center.y + radius)
                .addLine(center.x, center.y - radius)
                .move(center.x, center.y)
    }

    @discardableResult
    public func addRect(width: CGFloat, height: CGFloat) -> Self {
        let center = currentPoint
        let halfWidth = width / 2
        let halfHeight = height / 2

        return move(center.x - halfWidth, center.y - halfHeight)
                .addLine(center.x + halfWidth, center.y - halfHeight)
                .addLine(center.x + halfWidth, center.y + halfHeight)
                .addLine(center.x - halfWidth, center.y + halfHeight)
                .addLine(center.x - halfWidth, center.y - halfHeight)
                .move(center.x, center.y)
    }
}

