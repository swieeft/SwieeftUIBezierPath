//
//  ArcController.swift
//  SwieeftUIBezierPathExample
//
//  Created by Park GilNam on 09/12/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

import UIKit

public struct ArcPoint1Controller {
    internal init() {
        
    }
    
    public func controlPoint1(_ x: CGFloat, _ y: CGFloat) -> ArcPoint2Controller {
        ArcModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return ArcPoint2Controller()
    }
    
    public func controlPoint1(_ x: Double, _ y: Double) -> ArcPoint2Controller {
        ArcModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return ArcPoint2Controller()
    }
    
    public func controlPoint1(_ x: Int, _ y: Int) -> ArcPoint2Controller {
        ArcModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return ArcPoint2Controller()
    }
    
    public func controlPoint(_ x: CGFloat, _ y: CGFloat) -> ArcAngleController {
        ArcModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return ArcAngleController()
    }
    
    public func controlPoint(_ x: Double, _ y: Double) -> ArcAngleController {
        ArcModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return ArcAngleController()
    }
    
    public func controlPoint(_ x: Int, _ y: Int) -> ArcAngleController {
        ArcModel.shared.controlPoint1 = CGPoint(x: x, y: y)
        return ArcAngleController()
    }
}

public struct ArcPoint2Controller {
    internal init() {
        
    }
    
    public func controlPoint2(_ x: CGFloat, _ y: CGFloat) -> ArcClockwiseController {
        ArcModel.shared.controlPoint2 = CGPoint(x: x, y: y)
        return ArcClockwiseController()
    }
    
    public func controlPoint2(_ x: Double, _ y: Double) -> ArcClockwiseController {
        ArcModel.shared.controlPoint2 = CGPoint(x: x, y: y)
        return ArcClockwiseController()
    }
    
    public func controlPoint2(_ x: Int, _ y: Int) -> ArcClockwiseController {
        ArcModel.shared.controlPoint2 = CGPoint(x: x, y: y)
        return ArcClockwiseController()
    }
}

public struct ArcAngleController {
    internal init() {

    }

    public func angle(_ angle: CGFloat) -> ArcClockwiseController {
        ArcModel.shared.angle = angle
        return ArcClockwiseController()
    }
}

public struct ArcClockwiseController {
    internal init() {
        
    }
    
    @discardableResult
    public func clockwise(_ clockwise: Bool) -> UIBezierPath {
        ArcModel.shared.clockwise = clockwise
        return ArcModel.shared.path.addArc()
    }
}


