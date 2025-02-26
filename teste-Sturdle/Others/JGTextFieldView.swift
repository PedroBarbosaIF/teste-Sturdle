//
//  LikeARectangle.swift
//  teste-Sturdle
//
//  Created by found on 07/02/25.
//
import SwiftUI

struct JGTextFieldView: View {
    var rectangleName: String
    @Binding var text: String
    
    var body: some View {
        Text(rectangleName)
            .font(
                Font.custom("Roboto", size: 20)
                    .weight(.medium)
            )
            .frame(width: 300, alignment: .topLeading)
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.65, green: 0.65, blue: 0.65))
        
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 344, height: 47)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.65, green: 0.65, blue: 0.65), lineWidth: 1))
            
            TextField("Text Field", text: $text)
                .padding(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.clear, lineWidth: 2)
                )
            .frame(width: 344, height: 47, alignment: .center)
        }
    }
}

#Preview {
    @Previewable @State var text: String = ""
    
    JGTextFieldView(rectangleName: "testeeeeeeeeeeeeeeeee", text: $text)
}
