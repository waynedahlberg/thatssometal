//
//  ContentView.swift
//  ThatsSoMetal
//
//  Created by Wayne Dahlberg on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            Button(action: {
                //
            }, label: {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .fontWeight(.bold)
            })
            Text("Hello world!")
                .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
