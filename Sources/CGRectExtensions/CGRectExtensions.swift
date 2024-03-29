
import CoreGraphics
import SpriteKit

// MARK: CGPoint

extension CGPoint {

    /// Creates a point with unnamed arguments.
    public init(_ x: CGFloat, _ y: CGFloat) {
        self.init()
        self.x = x
        self.y = y
    }

    /// Returns a copy with the x value changed.
    public func with(x: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: y)
    }
    /// Returns a copy with the y value changed.
    public func with(y: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: y)
    }
}

// MARK: CGSize

extension CGSize {

    /// Creates a size with unnamed arguments.
    public init(_ width: CGFloat, _ height: CGFloat) {
        self.init()
        self.width = width
        self.height = height
    }

    /// Returns a copy with the width value changed.
    public func with(width: CGFloat) -> CGSize {
        return CGSize(width: width, height: height)
    }
    /// Returns a copy with the height value changed.
    public func with(height: CGFloat) -> CGSize {
        return CGSize(width: width, height: height)
    }
}

// MARK: CGRect

extension CGRect {

    /// Creates a rect with unnamed arguments.
    public init(_ origin: CGPoint, _ size: CGSize) {
        self.init()
        self.origin = origin
        self.size = size
    }

    /// Creates a rect with unnamed arguments.
    public init(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) {
        self.init()
        self.origin = CGPoint(x: x, y: y)
        self.size = CGSize(width: width, height: height)
    }

    // MARK: access shortcuts

    /// Alias for origin.x.
    public var x: CGFloat {
        get {return origin.x}
        set {origin.x = newValue}
    }
    /// Alias for origin.y.
    public var y: CGFloat {
        get {return origin.y}
        set {origin.y = newValue}
    }

    /// Accesses origin.x + 0.5 * size.width.
    public var centerX: CGFloat {
        get {return x + width * 0.5}
        set {x = newValue - width * 0.5}
    }
    /// Accesses origin.y + 0.5 * size.height.
    public var centerY: CGFloat {
        get {return y + height * 0.5}
        set {y = newValue - height * 0.5}
    }

    // MARK: edges

    /// Alias for origin.x.
    public var left: CGFloat {
        get {return origin.x}
        set {origin.x = newValue}
    }
    /// Accesses origin.x + size.width.
    public var right: CGFloat {
        get {return x + width}
        set {x = newValue - width}
    }

    #if os(iOS)
    /// Alias for origin.y.
    public var top: CGFloat {
        get {return y}
        set {y = newValue}
    }
    /// Accesses origin.y + size.height.
    public var bottom: CGFloat {
        get {return y + height}
        set {y = newValue - height}
    }
    #else
    /// Accesses origin.y + size.height.
    public var top: CGFloat {
        get {return y + height}
        set {y = newValue - height}
    }
    /// Alias for origin.y.
    public var bottom: CGFloat {
        get {return y}
        set {y = newValue}
    }
    #endif

    // MARK: points

    /// Accesses the point at the top left corner.
    public var topLeft: CGPoint {
        get {return CGPoint(x: left, y: top)}
        set {left = newValue.x; top = newValue.y}
    }
    /// Accesses the point at the middle of the top edge.
    public var topCenter: CGPoint {
        get {return CGPoint(x: centerX, y: top)}
        set {centerX = newValue.x; top = newValue.y}
    }
    /// Accesses the point at the top right corner.
    public var topRight: CGPoint {
        get {return CGPoint(x: right, y: top)}
        set {right = newValue.x; top = newValue.y}
    }

    /// Accesses the point at the middle of the left edge.
    public var centerLeft: CGPoint {
        get {return CGPoint(x: left, y: centerY)}
        set {left = newValue.x; centerY = newValue.y}
    }
    /// Accesses the point at the center.
    public var center: CGPoint {
        get {return CGPoint(x: centerX, y: centerY)}
        set {centerX = newValue.x; centerY = newValue.y}
    }
    /// Accesses the point at the middle of the right edge.
    public var centerRight: CGPoint {
        get {return CGPoint(x: right, y: centerY)}
        set {right = newValue.x; centerY = newValue.y}
    }

    /// Accesses the point at the bottom left corner.
    public var bottomLeft: CGPoint {
        get {return CGPoint(x: left, y: bottom)}
        set {left = newValue.x; bottom = newValue.y}
    }
    /// Accesses the point at the middle of the bottom edge.
    public var bottomCenter: CGPoint {
        get {return CGPoint(x: centerX, y: bottom)}
        set {centerX = newValue.x; bottom = newValue.y}
    }
    /// Accesses the point at the bottom right corner.
    public var bottomRight: CGPoint {
        get {return CGPoint(x: right, y: bottom)}
        set {right = newValue.x; bottom = newValue.y}
    }

    // MARK: with

    /// Returns a copy with the origin value changed.
    public func with(origin: CGPoint) -> CGRect {
        return CGRect(origin: origin, size: size)
    }
    /// Returns a copy with the x and y values changed.
    public func with(x: CGFloat, y: CGFloat) -> CGRect {
        return with(origin: CGPoint(x: x, y: y))
    }
    /// Returns a copy with the x value changed.
    public func with(x: CGFloat) -> CGRect {
        return with(x: x, y: y)
    }
    /// Returns a copy with the y value changed.
    public func with(y: CGFloat) -> CGRect {
        return with(x: x, y: y)
    }

    /// Returns a copy with the size value changed.
    public func with(size: CGSize) -> CGRect {
        return CGRect(origin: origin, size: size)
    }
    /// Returns a copy with the width and height values changed.
    public func with(width: CGFloat, height: CGFloat) -> CGRect {
        return with(size: CGSize(width: width, height: height))
    }
    /// Returns a copy with the width value changed.
    public func with(width: CGFloat) -> CGRect {
        return with(width: width, height: height)
    }
    /// Returns a copy with the height value changed.
    public func with(height: CGFloat) -> CGRect {
        return with(width: width, height: height)
    }

    /// Returns a copy with the x and width values changed.
    public func with(x: CGFloat, width: CGFloat) -> CGRect {
        return CGRect(origin: CGPoint(x: x, y: y), size: CGSize(width: width, height: height))
    }
    /// Returns a copy with the y and height values changed.
    public func with(y: CGFloat, height: CGFloat) -> CGRect {
        return CGRect(origin: CGPoint(x: x, y: y), size: CGSize(width: width, height: height))
    }

    // MARK: offset

    /// Returns a copy with the x and y values offset.
    public func offsetBy(_ dx: CGFloat, _ dy: CGFloat) -> CGRect {
        return with(x: x + dx, y: y + dy)
    }
    /// Returns a copy with the x value values offset.
    public func offsetBy(dx: CGFloat) -> CGRect {
        return with(x: x + dx)
    }
    /// Returns a copy with the y value values offset.
    public func offsetBy(dy: CGFloat) -> CGRect {
        return with(y: y + dy)
    }
    /// Returns a copy with the x and y values offset.
    public func offsetBy(_ by: CGSize) -> CGRect {
        return with(x: x + by.width, y: y + by.height)
    }

    /// Modifies the x and y values by offsetting.
    public mutating func offsetInPlace(_ dx: CGFloat, _ dy: CGFloat) {
        offsetInPlace(dx: dx)
        offsetInPlace(dy: dy)
    }
    
    /// Modifies the x value values by offsetting.
    public mutating func offsetInPlace(dx: CGFloat = 0) {
        x += dx
    }
    /// Modifies the y value values by offsetting.
    public mutating func offsetInPlace(dy: CGFloat = 0) {
        y += dy
    }
    /// Modifies the x and y values by offsetting.
    public mutating func offsetInPlace(_ by: CGSize) {
        offsetInPlace(by.width, by.height)
    }

    // MARK: inset

    /// Returns a copy inset on all edges by the same value.
    public func insetBy(_ by: CGFloat) -> CGRect {
        return insetBy(dx: by, dy: by)
    }

    /// Returns a copy inset on the left and right edges.
    public func insetBy(dx: CGFloat) -> CGRect {
        return with(x: x + dx, width: width - dx * 2)
    }
    /// Returns a copy inset on the top and bottom edges.
    public func insetBy(dy: CGFloat) -> CGRect {
        return with(y: y + dy, height: height - dy * 2)
    }

    /// Returns a copy inset on all edges by different values.
    public func insetBy(minX: CGFloat = 0, minY: CGFloat = 0, maxX: CGFloat = 0, maxY: CGFloat = 0) -> CGRect {
        return CGRect(x: x + minX, y: y + minY, width: width - minX - maxX, height: height - minY - maxY)
    }

    /// Returns a copy inset on all edges by different values.
    public func insetBy(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> CGRect {
        #if os(iOS)
            return CGRect(x: x + left, y: y + top, width: width - right - left, height: height - top - bottom)
        #else
            return CGRect(x: x + left, y: y + bottom, width: width - right - left, height: height - top - bottom)
        #endif
    }

    /// Returns a copy inset on the top and left edges.
    public func insetBy(topLeft: CGSize) -> CGRect {
        return insetBy(top: topLeft.height, left: topLeft.width)
    }
    /// Returns a copy inset on the top and right edges.
    public func insetBy(topRight: CGSize) -> CGRect {
        return insetBy(top: topRight.height, right: topRight.width)
    }
    /// Returns a copy inset on the bottom and left edges.
    public func insetBy(bottomLeft: CGSize) -> CGRect {
        return insetBy(left: bottomLeft.width, bottom: bottomLeft.height)
    }
    /// Returns a copy inset on the bottom and right edges.
    public func insetBy(bottomRight: CGSize) -> CGRect {
        return insetBy(bottom: bottomRight.height, right: bottomRight.width)
    }

    /// Modifies all values by insetting all edges by the same value.
    public mutating func insetInPlace(_ by: CGFloat) {
        self = insetBy(dx: by, dy: by)
    }

    /// Modifies all values by insetting on the left and right edges.
    public mutating func insetInPlace(dx: CGFloat) {
        self = insetBy(dx: dx, dy: 0)
    }
    /// Modifies all values by insetting on the top and bottom edges.
    public mutating func insetInPlace(dy: CGFloat) {
        self = insetBy(dx: 0, dy: dy)
    }

    /// Modifies all values by insetting all edges by different value.
    public mutating func insetInPlace(minX: CGFloat = 0, minY: CGFloat = 0, maxX: CGFloat = 0, maxY: CGFloat = 0) {
        self = insetBy(minX: minX, minY: minY, maxX: maxX, maxY: maxY)
    }

    /// Modifies all values by insetting all edges by different value.
    public mutating func insetInPlace(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
        self = insetBy(top: top, left: left, bottom: bottom, right: right)
    }

    /// Modifies all values by insetting the top and left edges.
    public mutating func insetInPlace(topLeft: CGSize) {
        self = insetBy(topLeft: topLeft)
    }
    /// Modifies all values by insetting the top and right edges.
    public mutating func insetInPlace(topRight: CGSize) {
        self = insetBy(topRight: topRight)
    }
    /// Modifies all values by insetting the bottom and left edges.
    public mutating func insetInPlace(bottomLeft: CGSize) {
        self = insetBy(bottomLeft: bottomLeft)
    }
    /// Modifies all values by insetting the bottom and right edges.
    public mutating func insetInPlace(bottomRight: CGSize) {
        self = insetBy(bottomRight: bottomRight)
    }

    // MARK: extending

    /// Returns a copy extended on all edges by different values.
    public func extendBy(dx: CGFloat, dy: CGFloat = 0) -> CGRect {
        return insetBy(dx: -dx, dy: -dy)
    }
    /// Returns a copy extended on the top and bottom edges.
    public func extendBy(dy: CGFloat) -> CGRect {
        return insetBy(dy: -dy)
    }

    /// Returns a copy extended on all edges by the same value.
    public func extendBy(_ by: CGFloat) -> CGRect {
        return insetBy(dx: -by, dy: -by)
    }

    /// Returns a copy extended on all edges by different values.
    public func extendBy(minX: CGFloat = 0, minY: CGFloat = 0, maxX: CGFloat = 0, maxY: CGFloat = 0) -> CGRect {
        return insetBy(minX: -minX, minY: -minY, maxX: -maxX, maxY: -maxY)
    }
    /// Returns a copy extended on all edges by different values.
    public func extendBy(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> CGRect {
        return insetBy(top: -top, left: -left, bottom: -bottom, right: -right)
    }

    /// Modifies all values by extending the top and left edges.
    public func extendBy(topLeft: CGSize) -> CGRect {
        return extendBy(top: topLeft.height, left: topLeft.width)
    }
    /// Modifies all values by extending the top and right edges.
    public func extendBy(topRight: CGSize) -> CGRect {
        return insetBy(top: -topRight.height, right: -topRight.width)
    }
    /// Modifies all values by extending the bottom and left edges.
    public func extendBy(bottomLeft: CGSize) -> CGRect {
        return insetBy(left: -bottomLeft.width, bottom: -bottomLeft.height)
    }
    /// Modifies all values by extending the bottom and right edges.
    public func extendBy(bottomRight: CGSize) -> CGRect {
        return insetBy(bottom: -bottomRight.height, right: -bottomRight.width)
    }

    /// Modifies all values by extending all edges by different values.
    public mutating func extendInPlace(dx: CGFloat, dy: CGFloat = 0) {
        self = insetBy(dx: -dx, dy: -dy)
    }
    /// Modifies all values by extending the top and bottom edges.
    public mutating func extendInPlace(dy: CGFloat) {
        self = insetBy(dy: -dy)
    }

    /// Modifies all values by extending all edges by the same value.
    public mutating func extendInPlace(_ by: CGFloat) {
        self = insetBy(dx: -by, dy: -by)
    }

    /// Modifies all values by extending all edges by different values.
    public mutating func extendInPlace(minX: CGFloat = 0, minY: CGFloat = 0, maxX: CGFloat = 0, maxY: CGFloat = 0) {
        self = insetBy(minX: -minX, minY: -minY, maxX: -maxX, maxY: -maxY)
    }
    /// Modifies all values by extending all edges by different values.
    public mutating func extendInPlace(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
        self = insetBy(top: -top, left: -left, bottom: -bottom, right: -right)
    }

    /// Modifies all values by extending the top and left edges.
    public mutating func extendInPlace(topLeft: CGSize) {
        self = extendBy(top: topLeft.height, left: topLeft.width)
    }
    /// Modifies all values by extending the top and right edges.
    public mutating func extendInPlace(topRight: CGSize) {
        self = insetBy(top: -topRight.height, right: -topRight.width)
    }
    /// Modifies all values by extending the bottom and left edges.
    public mutating func extendInPlace(bottomLeft: CGSize) {
        self = insetBy(left: -bottomLeft.width, bottom: -bottomLeft.height)
    }
    /// Modifies all values by extending the bottom and right edges.
    public mutating func extendInPlace(bottomRight: CGSize) {
        self = insetBy(bottom: -bottomRight.height, right: -bottomRight.width)
    }

    // MARK: sizes

    /// Returns a rect of the specified size centered in this rect.
    public func center(_ size: CGSize) -> CGRect {
        let dx = width - size.width
        let dy = height - size.height
        return CGRect(x: x + dx * 0.5, y: y + dy * 0.5, width: size.width, height: size.height)
    }

    /// Returns a rect of the specified size centered in this rect touching the specified edge.
    public func center(_ size: CGSize, alignTo edge: CGRectEdge) -> CGRect {
        return CGRect(origin: alignedOrigin(size, edge: edge), size: size)
    }

    fileprivate func alignedOrigin(_ size: CGSize, edge: CGRectEdge) -> CGPoint {
        let dx = width - size.width
        let dy = height - size.height
        switch edge {
        case .minXEdge:
            return CGPoint(x: x, y: y + dy * 0.5)
        case .minYEdge:
            return CGPoint(x: x + dx * 0.5, y: y)
        case .maxXEdge:
            return CGPoint(x: x + dx, y: y + dy * 0.5)
        case .maxYEdge:
            return CGPoint(x: x + dx * 0.5, y: y + dy)
        }
    }

    /// Returns a rect of the specified size centered in this rect touching the specified corner.
    public func align(_ size: CGSize, corner e1: CGRectEdge, _ e2: CGRectEdge) -> CGRect {
        return CGRect(origin: alignedOrigin(size, corner: e1, e2), size: size)
    }

    fileprivate func alignedOrigin(_ size: CGSize, corner e1: CGRectEdge, _ e2: CGRectEdge) -> CGPoint {
        let dx = width - size.width
        let dy = height - size.height
        switch (e1, e2) {
        case (.minXEdge, .minYEdge), (.minYEdge, .minXEdge):
            return CGPoint(x: x, y: y)
        case (.maxXEdge, .minYEdge), (.minYEdge, .maxXEdge):
            return CGPoint(x: x + dx, y: y)
        case (.minXEdge, .maxYEdge), (.maxYEdge, .minXEdge):
            return CGPoint(x: x, y: y + dy)
        case (.maxXEdge, .maxYEdge), (.maxYEdge, .maxXEdge):
            return CGPoint(x: x + dx, y: y + dy)
        default:
            preconditionFailure("Cannot align to this combination of edges")
        }
    }

    /// Modifies all values by setting the size while centering the rect.
    public mutating func centerInPlace(_ size: CGSize) {
        self = center(size)
    }

    /// Modifies all values by setting the size while centering the rect touching the specified edge.
    public mutating func centerInPlace(_ size: CGSize, alignTo edge: CGRectEdge) {
        self = center(size, alignTo: edge)
    }

    /// Modifies all values by setting the size while centering the rect touching the specified corner.
    public mutating func alignInPlace(_ size: CGSize, corner e1: CGRectEdge, _ e2: CGRectEdge) {
        self = align(size, corner: e1, e2)
    }
}

// MARK: transform
extension CGAffineTransform: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "(\(a),\(b),\(c),\(d),\(tx),\(ty))"
    }
}

// MARK: operators

/// Returns a point by adding the coordinates of another point.
public func +(p1: CGPoint, p2: CGPoint) -> CGPoint {
    return CGPoint(x: p1.x + p2.x, y: p1.y + p2.y)
}
/// Modifies the x and y values by adding the coordinates of another point.
public func +=(p1: inout CGPoint, p2: CGPoint) {
    p1.x += p2.x
    p1.y += p2.y
}
/// Returns a point by subtracting the coordinates of another point.
public func -(p1: CGPoint, p2: CGPoint) -> CGPoint {
    return CGPoint(x: p1.x - p2.x, y: p1.y - p2.y)
}
/// Modifies the x and y values by subtracting the coordinates of another points.
public func -=(p1: inout CGPoint, p2: CGPoint) {
    p1.x -= p2.x
    p1.y -= p2.y
}

/// Returns a point by adding a size to the coordinates.
public func +(point: CGPoint, size: CGSize) -> CGPoint {
    return CGPoint(x: point.x + size.width, y: point.y + size.height)
}
/// Modifies the x and y values by adding a size to the coordinates.
public func +=(point: inout CGPoint, size: CGSize) {
    point.x += size.width
    point.y += size.height
}
/// Returns a point by subtracting a size from the coordinates.
public func -(point: CGPoint, size: CGSize) -> CGPoint {
    return CGPoint(x: point.x - size.width, y: point.y - size.height)
}
/// Modifies the x and y values by subtracting a size from the coordinates.
public func -=(point: inout CGPoint, size: CGSize) {
    point.x -= size.width
    point.y -= size.height
}

/// Returns a point by adding a tuple to the coordinates.
public func +(point: CGPoint, tuple: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: point.x + tuple.0, y: point.y + tuple.1)
}
/// Modifies the x and y values by adding a tuple to the coordinates.
public func +=(point: inout CGPoint, tuple: (CGFloat, CGFloat)) {
    point.x += tuple.0
    point.y += tuple.1
}
/// Returns a point by subtracting a tuple from the coordinates.
public func -(point: CGPoint, tuple: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: point.x - tuple.0, y: point.y - tuple.1)
}
/// Modifies the x and y values by subtracting a tuple from the coordinates.
public func -=(point: inout CGPoint, tuple: (CGFloat, CGFloat)) {
    point.x -= tuple.0
    point.y -= tuple.1
}
/// Returns a point by multiplying the coordinates with a value.
public func *(point: CGPoint, factor: CGFloat) -> CGPoint {
    return CGPoint(x: point.x * factor, y: point.y * factor)
}
/// Modifies the x and y values by multiplying the coordinates with a value.
public func *=(point: inout CGPoint, factor: CGFloat) {
    point.x *= factor
    point.y *= factor
}
/// Returns a point by multiplying the coordinates with a tuple.
public func *(point: CGPoint, tuple: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: point.x * tuple.0, y: point.y * tuple.1)
}
/// Modifies the x and y values by multiplying the coordinates with a tuple.
public func *=(point: inout CGPoint, tuple: (CGFloat, CGFloat)) {
    point.x *= tuple.0
    point.y *= tuple.1
}
/// Returns a point by dividing the coordinates by a tuple.
public func /(point: CGPoint, tuple: (CGFloat, CGFloat)) -> CGPoint {
    return CGPoint(x: point.x / tuple.0, y: point.y / tuple.1)
}
/// Modifies the x and y values by dividing the coordinates by a tuple.
public func /=(point: inout CGPoint, tuple: (CGFloat, CGFloat)) {
    point.x /= tuple.0
    point.y /= tuple.1
}
/// Returns a point by dividing the coordinates by a factor.
public func /(point: CGPoint, factor: CGFloat) -> CGPoint {
    return CGPoint(x: point.x / factor, y: point.y / factor)
}
/// Modifies the x and y values by dividing the coordinates by a factor.
public func /=(point: inout CGPoint, factor: CGFloat) {
    point.x /= factor
    point.y /= factor
}

/// Returns a point by adding another size.
public func +(s1: CGSize, s2: CGSize) -> CGSize {
    return CGSize(width: s1.width + s2.width, height: s1.height + s2.height)
}
/// Modifies the width and height values by adding another size.
public func +=(s1: inout CGSize, s2: CGSize) {
    s1.width += s2.width
    s1.height += s2.height
}
/// Returns a point by subtracting another size.
public func -(s1: CGSize, s2: CGSize) -> CGSize {
    return CGSize(width: s1.width - s2.width, height: s1.height - s2.height)
}
/// Modifies the width and height values by subtracting another size.
public func -=(s1: inout CGSize, s2: CGSize) {
    s1.width -= s2.width
    s1.height -= s2.height
}

/// Returns a point by adding a tuple.
public func +(size: CGSize, tuple: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: size.width + tuple.0, height: size.height + tuple.1)
}
/// Modifies the width and height values by adding a tuple.
public func +=(size: inout CGSize, tuple: (CGFloat, CGFloat)) {
    size.width += tuple.0
    size.height += tuple.1
}
/// Returns a point by subtracting a tuple.
public func -(size: CGSize, tuple: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: size.width - tuple.0, height: size.height - tuple.1)
}
/// Modifies the width and height values by subtracting a tuple.
public func -=(size: inout CGSize, tuple: (CGFloat, CGFloat)) {
    size.width -= tuple.0
    size.height -= tuple.1
}
/// Returns a point by multiplying the size with a factor.
public func *(size: CGSize, factor: CGFloat) -> CGSize {
    return CGSize(width: size.width * factor, height: size.height * factor)
}
/// Modifies the width and height values by multiplying them with a factor.
public func *=(size: inout CGSize, factor: CGFloat) {
    size.width *= factor
    size.height *= factor
}
/// Returns a point by multiplying the size with a tuple.
public func *(size: CGSize, tuple: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: size.width * tuple.0, height: size.height * tuple.1)
}
/// Modifies the width and height values by multiplying them with a tuple.
public func *=(size: inout CGSize, tuple: (CGFloat, CGFloat)) {
    size.width *= tuple.0
    size.height *= tuple.1
}
/// Returns a point by dividing the size by a factor.
public func /(size: CGSize, factor: CGFloat) -> CGSize {
    return CGSize(width: size.width / factor, height: size.height / factor)
}
/// Modifies the width and height values by dividing them by a factor.
public func /=(size: inout CGSize, factor: CGFloat) {
    size.width /= factor
    size.height /= factor
}
/// Returns a point by dividing the size by a tuple.
public func /(size: CGSize, tuple: (CGFloat, CGFloat)) -> CGSize {
    return CGSize(width: size.width / tuple.0, height: size.height / tuple.1)
}
/// Modifies the width and height values by dividing them by a tuple.
public func /=(size: inout CGSize, tuple: (CGFloat, CGFloat)) {
    size.width /= tuple.0
    size.height /= tuple.1
}

/// Returns a rect by adding the coordinates of a point to the origin.
public func +(rect: CGRect, point: CGPoint) -> CGRect {
    return CGRect(origin: rect.origin + point, size: rect.size)
}
/// Modifies the x and y values by adding the coordinates of a point.
public func +=(rect: inout CGRect, point: CGPoint) {
    rect.origin += point
}
/// Returns a rect by subtracting the coordinates of a point from the origin.
public func -(rect: CGRect, point: CGPoint) -> CGRect {
    return CGRect(origin: rect.origin - point, size: rect.size)
}
/// Modifies the x and y values by subtracting the coordinates from a point.
public func -=(rect: inout CGRect, point: CGPoint) {
    rect.origin -= point
}

/// Returns a rect by adding a size to the size.
public func +(rect: CGRect, size: CGSize) -> CGRect {
    return CGRect(origin: rect.origin, size: rect.size + size)
}
/// Modifies the width and height values by adding a size.
public func +=(rect: inout CGRect, size: CGSize) {
    rect.size += size
}
/// Returns a rect by subtracting a size from the size.
public func -(rect: CGRect, size: CGSize) -> CGRect {
    return CGRect(origin: rect.origin, size: rect.size - size)
}
/// Modifies the width and height values by subtracting a size.
public func -=(rect: inout CGRect, size: CGSize) {
    rect.size -= size
}

/// Returns a point by applying a transform.
public func *(point: CGPoint, transform: CGAffineTransform) -> CGPoint {
    return point.applying(transform)
}
/// Modifies all values by applying a transform.
public func *=(point: inout CGPoint, transform: CGAffineTransform) {
    point = point.applying(transform)
}
/// Returns a size by applying a transform.
public func *(size: CGSize, transform: CGAffineTransform) -> CGSize {
    return size.applying(transform)
}
/// Modifies all values by applying a transform.
public func *=(size: inout CGSize, transform: CGAffineTransform) {
    size = size.applying(transform)
}
/// Returns a rect by applying a transform.
public func *(rect: CGRect, transform: CGAffineTransform) -> CGRect {
    return rect.applying(transform)
}
/// Modifies all values by applying a transform.
public func *=(rect: inout CGRect, transform: CGAffineTransform) {
    rect = rect.applying(transform)
}

/// Returns a transform by concatenating two transforms.
public func *(t1: CGAffineTransform, t2: CGAffineTransform) -> CGAffineTransform {
    return t1.concatenating(t2)
}
/// Modifies all values by concatenating another transform.
public func *=(t1: inout CGAffineTransform, t2: CGAffineTransform) {
    t1 = t1.concatenating(t2)
}
