//
//  CGFloat+pixelsPerPoint.swift
//  ThatsSoMetal
//
//  Created by Wayne Dahlberg on 6/14/23.
//

import CoreGraphics

#if os(macOS)
import AppKit
#else
import UIKit
#endif

extension CGFloat {
    
    public static var pixelsPerPoint: CGFloat {
        #if os(macOS)
        return NSScreen.main?.backingScaleFactor ?? 1.0
        #else
        return UIScreen.main.scale 
        #endif
    }
    
}
