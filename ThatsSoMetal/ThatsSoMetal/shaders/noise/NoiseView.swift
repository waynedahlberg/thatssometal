//
//  NoiseView.swift
//  ThatsSoMetal
//
//  Created by Wayne Dahlberg on 6/14/23.
//

import SwiftUI

struct NoiseView: View {
    var body: some View {
        Noise(
            octaves: 1,
            offset: CGPoint(x: 0.5, y: 0.5),
            zOffset: 1.0,
            scale: 1.0,
            isColored: true,
            isRandom: false,
            seed: 3)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    NoiseView()
}
