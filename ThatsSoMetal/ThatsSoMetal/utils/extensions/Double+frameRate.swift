//
//  Double+frameRate.swift
//  ThatsSoMetal
//
//  Created by Wayne Dahlberg on 6/14/23.
//

import Foundation

#if os(macOS)
import AppKit
#else
import UIKit
#endif

extension Double {
    
    public static var frameRate: Double {
        #if os(macOS)
        let id = CGMainDisplayID()
        guard let mode = CGDisplayCopyDisplayMode(id) else { return 60 }
        return mode.refreshRate
        #else
        return Double(UIScreen.main.maximumFramesPerSecond)
        #endif
    }
    
}
