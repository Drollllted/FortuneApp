//
//  NiceOrNotButtonCustom.swift
//  FortuneApp
//
//  Created by Drolllted on 14.07.2025.
//

import SwiftUI

struct NiceOrNotButtonCustom: View {
    var body: some View {
        HStack(alignment: .center){
            Button {
                
            } label: {
                Image(systemName: "hand.thumbsup.fill")
                    .resizable()
                    .foregroundStyle(.black)
                    .frame(width: 40, height: 40)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .fill()
                            .stroke(.black, lineWidth: 1)
                            .foregroundStyle(.gray.opacity(0.4))
                            .frame(width: 100, height: 100)
                    }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "hand.thumbsdown.fill")
                    .resizable()
                    .foregroundStyle(.black)
                    .frame(width: 40, height: 40)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .fill()
                            .stroke(.black, lineWidth: 1)
                            .foregroundStyle(.gray.opacity(0.4))
                            .frame(width: 100, height: 100)
                    }
            }
            
            

        }
    }
}
#Preview {
    NiceOrNotButtonCustom()
}
