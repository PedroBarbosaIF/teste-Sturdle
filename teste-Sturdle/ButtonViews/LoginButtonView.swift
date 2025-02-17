//
//  LoginButtonView.swift
//  teste-Sturdle
//
//  Created by found on 07/02/25.
//

import SwiftUI

struct LoginButtonView: View {
    var buttonName: String
    var firstColor: Color
    var secondaryColor: Color
    var terciaryColor: Color

    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(buttonName)
              .font(
                Font.custom("Be Vietnam Pro", size: 20)
                  .weight(.medium)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .frame(width: 100)
        }
        .padding(.horizontal, 22)
        .padding(.vertical, 20)
        .frame(width: 127, height: 64, alignment: .center)
        .background(LinearGradient(colors: [firstColor, secondaryColor, terciaryColor], startPoint: .top, endPoint: .bottom))
        .cornerRadius(24)
    }
}

#Preview {
    LoginButtonView(buttonName: "testeeeee",
                    firstColor: Color("greenSturdle"),
                    secondaryColor: Color("greenSturdle"),
                    terciaryColor: Color("blueSturdle")
    )
}
