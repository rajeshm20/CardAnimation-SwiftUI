//
//  DarkCard.swift
//  QizKid
//
//  Created by Rajesh Mani on 20/11/23.
//

import SwiftUI

struct DarkCard: View {
    @State private var rotation:CGFloat = 0.0

    var body: some View {
        ZStack {
            Color.black.opacity(0.8)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 500, height: 440)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .pink, .purple, .blue]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .blur(radius: 10)
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 3)
                        .frame(width: 250, height: 335)
                }
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height: 340)
                .foregroundColor(Color("C"))
//                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 0)
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 500, height: 440)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .pink, .purple, .blue]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 3)
                        .frame(width: 256, height: 336)
                }
            Text("CARD")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color.white)
        }
        .onAppear{
            withAnimation(.linear(duration: 4).repeatForever(autoreverses:false)) {
                rotation = 360
            }
            
        }

    }
}

#Preview {
    DarkCard()
}
