//
//  ContentView.swift
//  FortuneApp
//
//  Created by Drolllted on 13.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task{
            NetworkSerivce.shared.setupJSON()
        }
    }
}

#Preview {
    ContentView()
}
