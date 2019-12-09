//
//  ArcModel.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 09/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

internal struct ArcModel {
    var path: UIBezierPath
    var center: CGPoint?
    var controlPoint1: CGPoint?
    var controlPoint2: CGPoint?
    var clockwise: Bool
    var angle: CGFloat
    var radius: CGFloat {
        guard let center = self.center, let controlPoint1 = self.controlPoint1 else {
            return 0
        }
        
        let xDist: CGFloat = controlPoint1.x - center.x
        let yDist: CGFloat = controlPoint1.y - center.y
        let radius: CGFloat = sqrt(xDist * xDist + yDist * yDist)
        
        return radius
    }
    
    var startAngle: CGFloat {
        guard let center = self.center, let controlPoint1 = self.controlPoint1 else {
            return 0
        }
        
        let origin = CGPoint(x: center.x + radius, y: center.y)
        let v1 = CGVector(dx: origin.x - center.x, dy: origin.y - center.y)
        let v2 = CGVector(dx: controlPoint1.x - center.x, dy: controlPoint1.y - center.y)
        let angle = atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx)
        return angle
    }
    
    var endAngle: CGFloat {
        guard let center = self.center else {
            return 0
        }
        
        if let controlPoint2 = self.controlPoint2 {
            let origin = CGPoint(x: center.x + radius, y: center.y)
            let v1 = CGVector(dx: origin.x - center.x, dy: origin.y - center.y)
            let v2 = CGVector(dx: controlPoint2.x - center.x, dy: controlPoint2.y - center.y)
            let angle = atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx)
            return angle
        } else {
            return (angle * 0.0195) + startAngle
        }
    }

    static var shared = ArcModel()

    private init() {
        path = UIBezierPath()
        clockwise = true
        angle = 0
    }
    
    mutating func clear() {
        path = UIBezierPath()
        center = nil
        controlPoint1 = nil
        controlPoint2 = nil
        clockwise = true
        angle = 0
    }
}
