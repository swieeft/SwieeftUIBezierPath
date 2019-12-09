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
}

// MARK: AddLine Func
extension UIBezierPath {
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
extension UIBezierPath {
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
        if let toPoint = QuadCurveModel.shared.toPoint, let controlPoint = QuadCurveModel.shared.controlPoint {
            addQuadCurve(to: toPoint, controlPoint: controlPoint)
        }
        
        QuadCurveModel.shared.clear()
        return self
    }
}
    
// MARK: AddCurve Func
extension UIBezierPath {
    public func addCurve(_ x: CGFloat, _ y: CGFloat) -> CurveController1 {
        CurveModel.shared.path = self
        CurveModel.shared.toPoint = CGPoint(x: x, y: y)
        return CurveController1()
    }
    
    public func addCurve(_ x: Double, _ y: Double) -> CurveController1 {
        CurveModel.shared.path = self
        CurveModel.shared.toPoint = CGPoint(x: x, y: y)
        return CurveController1()
    }
    
    public func addCurve(_ x: Int, _ y: Int) -> CurveController1 {
        CurveModel.shared.path = self
        CurveModel.shared.toPoint = CGPoint(x: x, y: y)
        return CurveController1()
    }
    
    internal func addCurve() -> Self {
        let model = CurveModel.shared
        if let toPoint = model.toPoint, let controlPoint1 = model.controlPoint1, let controlPoint2 = model.controlPoint2 {
            addCurve(to: toPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        }
        CurveModel.shared.clear()
        return self
    }
}

// MARK: AddArc Func
extension UIBezierPath {
    public func addArc(_ x: CGFloat, _ y: CGFloat) -> ArcPoint1Controller {
        ArcModel.shared.path = self
        ArcModel.shared.center = CGPoint(x: x, y: y)
        return ArcPoint1Controller()
    }
    
    public func addArc(_ x: Double, _ y: Double) -> ArcPoint1Controller {
        ArcModel.shared.path = self
        ArcModel.shared.center = CGPoint(x: x, y: y)
        return ArcPoint1Controller()
    }
    
    public func addArc(_ x: Int, _ y: Int) -> ArcPoint1Controller {
        ArcModel.shared.path = self
        ArcModel.shared.center = CGPoint(x: x, y: y)
        return ArcPoint1Controller()
    }
    
    internal func addArc() -> Self {
        let model = ArcModel.shared
        if let center = model.center {
            
            print(model.startAngle)
            print(model.endAngle)
            addArc(withCenter: center, radius: model.radius, startAngle: model.startAngle, endAngle: model.endAngle, clockwise: model.clockwise)
        }
        ArcModel.shared.clear()
        return self
    }
}

// MARK: AddCircle Func
extension UIBezierPath {
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
        
        move(center.x, center.y - radius)
            .addLine(center.x - ((radius / 4) * 3), center.y + radius)
            .addLine(center.x + radius, center.y - (radius / 4))
            .addLine(center.x - radius, center.y - (radius / 4))
            .addLine(center.x + ((radius / 4) * 3), center.y + radius)
            .close()
        
        return self
    }
}

