//
//  TextFieldCustom.swift
//  FortuneApp
//
//  Created by Drolllted on 14.07.2025.
//

import SwiftUI

struct TextFieldCustom: View {
    
    @State var text: String = ""
    
    var body: some View {
        HStack(spacing: 15) {
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(.black)
            
            TextField("Write your fortune", text: $text)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 20)
                .fill()
                .stroke(.black, lineWidth: 1)
                .foregroundStyle(.gray.opacity(0.3))
                .frame(width: .infinity, height: 60)
        }
    }
}

#Preview {
    TextFieldCustom()
}
