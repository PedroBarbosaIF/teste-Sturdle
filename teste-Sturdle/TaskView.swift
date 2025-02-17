//
//  TaskView.swift
//  teste-Sturdle
//
//  Created by found on 12/02/25.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 190, height: 162)
                .background(LinearGradient(colors: [.greenSturdle,.greenSturdle,.blueSturdle],
                                           startPoint: .top,
                                           endPoint: .bottom))
                .cornerRadius(24)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            
            HStack{
                VStack{
                    Text("atividade")
                        .font(.system(size: 20, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 113, height: 28)
                    Spacer()
                    
                    
                }
                Spacer()
                    .frame(width: 30)
                
                VStack{
                    Spacer()
                    
                    Image(systemName: "checkmark.square")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundStyle(.white)
                        .frame(width: 26, height:26)
                        .padding(EdgeInsets(top: 10,
                                            leading: 10,
                                            bottom: 10, trailing: 10))
                }
                

            }
        }
        .frame(width: 1, height: 1)
    }
}

#Preview {
    TaskView()
}
