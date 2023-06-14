//
//  Noise.swift
//  ThatsSoMetal
//
//  Created by Wayne Dahlberg on 6/14/23.
//

import SwiftUI

public struct Noise: View {
    
    let octaves: Int
    let offset: CGPoint
    let zOffset: CGFloat
    let scale: CGFloat
    let isColored: Bool
    let isRandom: Bool
    let seed: Int
    
    public init(octaves: Int, offset: CGPoint, zOffset: CGFloat, scale: CGFloat, isColored: Bool, isRandom: Bool, seed: Int) {
        self.octaves = octaves
        self.offset = offset
        self.zOffset = zOffset
        self.scale = scale
        self.isColored = isColored
        self.isRandom = isRandom
        self.seed = seed
    }
    
    private var shaderFunction: ShaderFunction {
        ShaderFunction(library: .default, name: "noise")
        
        //ShaderFunction(library: .bundle(.module), name: "noise")
    }
    
    private func shader(size: CGSize) -> Shader {
        Shader(function: shaderFunction, arguments: [
            .float2(size),
            .float(CGFloat(octaves)),
            .float2(offset),
            .float(zOffset),
            .float(scale),
            .float(isColored ? 1.0 : 0.0),
            .float(isRandom ? 1.0 : 0.0),
            .float(CGFloat(seed)),
        ])
    }
    
    public var body: some View {
        SizeReader { size in
            Rectangle()
                .colorEffect(shader(size: size))
        }
    }
}
