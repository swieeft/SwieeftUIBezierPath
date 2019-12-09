# SwieeftUIBezierPath
SwieeftUIBezierPath can help you connect UIBezierPath with chaining and make it easier to work with.

## Usages
- **Move**
```swift
public func move(_ x: CGFloat, _ y: CGFloat) -> Self
public func move(_ x: Double, _ y: Double) -> Self
public func move(_ x: Int, _ y: Int) -> Self
```
- **Add Line**
```swift
public func addLine(_ x: CGFloat, _ y: CGFloat) -> Self
public func addLine(_ x: Double, _ y: Double) -> Self
public func addLine(_ x: Int, _ y: Int) -> Self
```
- **Add QuadCurve**
```swift
public func addQuadCurve(_ x: CGFloat, _ y: CGFloat) -> QuadCurveController
public func addQuadCurve(_ x: Double, _ y: Double) -> QuadCurveController
public func addQuadCurve(_ x: Int, _ y: Int) -> QuadCurveController
```
```swift
// Add Control Point
public func controlPoint(_ controlX: CGFloat, _ controlY: CGFloat) -> UIBezierPath
public func controlPoint(_ controlX: Double, _ controlY: Double) -> UIBezierPath
public func controlPoint(_ controlX: Int, _ controlY: Int) -> UIBezierPath
```
- **Add Curve**
```swift
public func addCurve(_ x: CGFloat, _ y: CGFloat) -> CurveController1
public func addCurve(_ x: Double, _ y: Double) -> CurveController1
public func addCurve(_ x: Int, _ y: Int) -> CurveController1
```
```swift
// Add Control Point 1
public func controlPoint1(_ x: CGFloat, _ y: CGFloat) -> CurveController2 
public func controlPoint1(_ x: Double, _ y: Double) -> CurveController2
public func controlPoint1(_ x: Int, _ y: Int) -> CurveController2
```

```swift
// Add Control Point 2
public func controlPoint2(_ x: CGFloat, _ y: CGFloat) -> UIBezierPath
public func controlPoint2(_ x: Double, _ y: Double) -> UIBezierPath
public func controlPoint2(_ x: Int, _ y: Int) -> UIBezierPath
```
- **Add Arc**
```swift
public func addArc(_ x: CGFloat, _ y: CGFloat) -> ArcPoint1Controller
public func addArc(_ x: Double, _ y: Double) -> ArcPoint1Controller
public func addArc(_ x: Int, _ y: Int) -> ArcPoint1Controller
```
```swift
// Add Control Point 1
public func controlPoint1(_ x: CGFloat, _ y: CGFloat) -> ArcPoint2Controller
public func controlPoint1(_ x: Double, _ y: Double) -> ArcPoint2Controller
public func controlPoint1(_ x: Int, _ y: Int) -> ArcPoint2Controller
    
public func controlPoint(_ x: CGFloat, _ y: CGFloat) -> ArcAngleController
public func controlPoint(_ x: Double, _ y: Double) -> ArcAngleController
public func controlPoint(_ x: Int, _ y: Int) -> ArcAngleController
```
```swift
// Add Control Point 2
public func controlPoint2(_ x: CGFloat, _ y: CGFloat) -> ArcClockwiseController
public func controlPoint2(_ x: Double, _ y: Double) -> ArcClockwiseController
public func controlPoint2(_ x: Int, _ y: Int) -> ArcClockwiseController
```
```swift
// Add Angle
public func angle(_ angle: CGFloat) -> ArcClockwiseController
```
```swift
// Add Clockwise
public func clockwise(_ clockwise: Bool) -> UIBezierPath
```

- **Example**
  - Preparing...

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects.

To install SwieeftUIBezierPath, simply add the following line to your Podfile:

```ruby
pod 'SwieeftUIBezierPath', '~> 1.0.1'
```

## LICENSE

The MIT License

SwieeftUIBezierPath is released under the MIT license. [See LICENSE](https://github.com/swieeft/SwieeftUIBezierPath/blob/master/LICENSE) for details.
