//
//  TestView.swift
//  teste-Sturdle
//
//  Created by found on 06/02/25.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack(alignment: .leading) {
                Text("Top Text")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                 Text("Bottom Text")
                    .font(.system(size: 12))
                    .fontWeight(.regular)
            }
            .position(x: 0, y: 0)
        }
}

#Preview {
    TestView()
}
