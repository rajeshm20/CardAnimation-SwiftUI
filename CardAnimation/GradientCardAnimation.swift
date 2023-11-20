//
//  GradientCardAnimation.swift
//  QizKid
//
//  Created by Rajesh Mani on 20/11/23.
//

import SwiftUI

struct GradientCardAnimation: View {
    @State private var rotation:CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height: 340)
                .foregroundColor(Color("C"))
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 130, height: 500)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("lt"),Color("lb")]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 7)
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
    GradientCardAnimation()
}
