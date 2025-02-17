//
//  ButtonView.swift
//  teste-Sturdle
//
//  Created by found on 06/02/25.
//

import SwiftUI

struct WelcomeButtonView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    let buttonName: String
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            Text(buttonName)
              .font(Font.custom("Be Vietnam Pro", size: 20))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .frame(width: 1000)
        }
        .padding(.horizontal, 100)
        .padding(.vertical, 12)
        .frame(width: 350, height: 48, alignment: .center)
        .background(Color(red: redColor,
                          green: greenColor,
                          blue: blueColor).gradient)
        .cornerRadius(24)
        

    }
}

#Preview {
    WelcomeButtonView(redColor: 0,
               greenColor: 0.93,
               blueColor: 0.79,
               buttonName: "Button Nameeeeeeeeeeeeeeeeee"
    )
}
