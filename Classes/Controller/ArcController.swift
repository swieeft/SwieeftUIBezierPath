//
//  ArcController.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 09/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct ArcPoint1Controller {

    let path: UIBezierPath
    let center: CGPoint

    internal init(path: UIBezierPath, center: CGPoint) {
        self.path = path
        self.center = center
    }
    
    public func cp1(_ x: CGFloat, _ y: CGFloat) -> ArcPoint2Controller {
        return ArcPoint2Controller(path: path, center: center, control1: CGPoint(x: x, y: y))
    }
    
    public func cp1(_ x: Double, _ y: Double) -> ArcPoint2Controller {
        return ArcPoint2Controller(path: path, center: center, control1: CGPoint(x: x, y: y))
    }
    
    public func cp1(_ x: Int, _ y: Int) -> ArcPoint2Controller {
        return ArcPoint2Controller(path: path, center: center, control1: CGPoint(x: x, y: y))
    }
    
    public func startAnglePoint(_ x: CGFloat, _ y: CGFloat) -> ArcAngleController {
        return ArcAngleController(path: path, center: center, startPoint: CGPoint(x: x, y: y))
    }
    
    public func startAnglePoint(_ x: Double, _ y: Double) -> ArcAngleController {
        return ArcAngleController(path: path, center: center, startPoint: CGPoint(x: x, y: y))
    }
    
    public func startAnglePoint(_ x: Int, _ y: Int) -> ArcAngleController {
        return ArcAngleController(path: path, center: center, startPoint: CGPoint(x: x, y: y))
    }
}

public struct ArcPoint2Controller {

    let path: UIBezierPath
    let center: CGPoint
    let control1: CGPoint

    var radius: CGFloat {
        let xDist: CGFloat = control1.x - center.x
        let yDist: CGFloat = control1.y - center.y
        let radius: CGFloat = sqrt(xDist * xDist + yDist * yDist)

        return radius
    }

    var startAngle: CGFloat {
        let origin = CGPoint(x: center.x + radius, y: center.y)
        let v1 = CGVector(dx: origin.x - center.x, dy: origin.y - center.y)
        let v2 = CGVector(dx: control1.x - center.x, dy: control1.y - center.y)
        let angle = atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx)
        return angle
    }

    internal init(path: UIBezierPath, center: CGPoint, control1: CGPoint) {
        self.path = path
        self.center = center
        self.control1 = control1
    }
    
    public func cp2(_ x: CGFloat, _ y: CGFloat, clockwise: Bool) -> UIBezierPath {
        let endAngle = getEndAngle(point: CGPoint(x: x, y: y))
        return path.addArc(center: center, radius: radius, start: startAngle, end: endAngle, clockwise: clockwise)
    }
    
    public func cp2(_ x: Double, _ y: Double, clockwise: Bool) -> UIBezierPath {
        let endAngle = getEndAngle(point: CGPoint(x: x, y: y))
        return path.addArc(center: center, radius: radius, start: startAngle, end: endAngle, clockwise: clockwise)
    }
    
    public func cp2(_ x: Int, _ y: Int, clockwise: Bool) -> UIBezierPath {
        let endAngle = getEndAngle(point: CGPoint(x: x, y: y))
        return path.addArc(center: center, radius: radius, start: startAngle, end: endAngle, clockwise: clockwise)
    }

    private func getEndAngle(point: CGPoint) -> CGFloat {
        let origin = CGPoint(x: center.x + radius, y: center.y)
        let v1 = CGVector(dx: origin.x - center.x, dy: origin.y - center.y)
        let v2 = CGVector(dx: point.x - center.x, dy: point.y - center.y)
        let angle = atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx)
        return angle
    }
}

public struct ArcAngleController {

    let path: UIBezierPath
    let center: CGPoint
    let startPoint: CGPoint

    var radius: CGFloat {
        let xDist: CGFloat = startPoint.x - center.x
        let yDist: CGFloat = startPoint.y - center.y
        let radius: CGFloat = sqrt(xDist * xDist + yDist * yDist)

        return radius
    }

    var startAngle: CGFloat {
        let origin = CGPoint(x: center.x + radius, y: center.y)
        let v1 = CGVector(dx: origin.x - center.x, dy: origin.y - center.y)
        let v2 = CGVector(dx: startPoint.x - center.x, dy: startPoint.y - center.y)
        let angle = atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx)
        return angle
    }

    internal init(path: UIBezierPath, center: CGPoint, startPoint: CGPoint) {
        self.path = path
        self.center = center
        self.startPoint = startPoint
    }

    public func angle(_ angle: CGFloat, clockwise: Bool) -> UIBezierPath {
        let endAngle = radius * angle * (3.14/180) * 0.01
        return path.addArc(center: center, radius: radius, start: startAngle, end: endAngle, clockwise: clockwise)
    }
}

