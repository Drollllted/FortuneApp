//
//  ContentView.swift
//  FortuneApp
//
//  Created by Drolllted on 13.07.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm: MainViewModule
    
    var body: some View {
        VStack(spacing: 20) {
            TextFieldCustom()
            
            ButtonFortune()
                .padding()
            
            AsyncImageCustom()
            
            NiceOrNotButtonCustom()
                .padding()
            
            Spacer()
        }
        .padding()
        .task{
            vm.fetchData()
        }
    }
}

#Preview {
    ContentView(vm: MainViewModule())
}
