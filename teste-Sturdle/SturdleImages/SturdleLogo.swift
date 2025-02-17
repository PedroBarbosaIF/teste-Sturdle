//
//  SwiftUIView.swift
//  teste-Sturdle
//
//  Created by found on 06/02/25.
//

import SwiftUI

struct SturdleLogo: View {
    var body: some View {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 267, height: 93)
          .background(
            Image("sturdlelogo")
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: 267, height: 93)
              .clipped()
          )
    }
}

#Preview {
    SturdleLogo()
}
