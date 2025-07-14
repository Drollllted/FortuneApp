//
//  ButtonFortune.swift
//  FortuneApp
//
//  Created by Drolllted on 14.07.2025.
//

import SwiftUI

struct ButtonFortune: View {
    
   // let action: () -> Void
    
    var body: some View {
        Button {
          //  action()
        } label: {
            Text("Fortune")
                .foregroundStyle(.black)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .fill()
                        .stroke(.black, lineWidth: 1)
                        .foregroundStyle(.purple.opacity(0.3))
                        .frame(width: 400, height: 60)
                        .padding()
                }
                
        }
    }
}

#Preview{
    ButtonFortune()
}
