//
//  HexParams.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 16/12/21.
//

// import Foundation
import CoreGraphics

struct HexParams {
    /*
     Each side starts where the previous ends, moves in a straight line to the first point, and then moves over a Bézier curve at the corner to the second point. The third point controls the shape of the curve.
     */
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let segments = [
        
    ]
}
