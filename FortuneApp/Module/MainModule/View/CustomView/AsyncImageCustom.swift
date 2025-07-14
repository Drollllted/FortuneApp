//
//  AsyncImageCustom.swift
//  FortuneApp
//
//  Created by Drolllted on 14.07.2025.
//

import SwiftUI

struct AsyncImageCustom: View {
    
    @State var url = ""
    
    var body: some View {
        AsyncImage(url: URL(string: url))
            .foregroundStyle(.gray.opacity(0.9))
            .frame(width: 400, height: 400)
            .cornerRadius(15)
    }
}

#Preview{
    AsyncImageCustom()
}
