//
//  SturdleIcon.swift
//  teste-Sturdle
//
//  Created by found on 06/02/25.
//

import SwiftUI

struct SturdleIcon: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 350, height: 350)
            .background(
                Image("sturdleicon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 350)
                    .clipped()
            )
            .cornerRadius(100)
    }
}

#Preview {
    SturdleIcon()
}
