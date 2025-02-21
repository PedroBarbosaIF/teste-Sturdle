//
//  TaskView.swift
//  teste-Sturdle
//
//  Created by found on 12/02/25.
//

import SwiftUI

struct TaskView: View {
    
    let task: Task
    
    init(task: Task) {
        self.task = task
    }
    
    
    var body: some View {
        ZStack{
            Rectangle()
//                .fill(.shadow(.inner(radius: 10, y: 10)))
                .foregroundColor(.clear)
                .frame(width: 190, height: 162)
                .background(LinearGradient(colors: [.greenSturdle],
                                           startPoint: .top,
                                           endPoint: .bottom))
                .cornerRadius(24)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            
            HStack{
                VStack{
                    Text(task.name)
                        .font(.system(size: 20, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 113, height: 28)
                    Spacer()
                    
                    Text(task.deadline)
                        .font(.system(size: 18, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 123, height: 28)
                }
                
                Spacer()
                    .frame(width: 30)
                
                VStack{
                    Spacer()
                    
                    Image(systemName: task.isDone ? "checkmark.square": "square")
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
    TaskView(task: .init(name: "macosmio", deadline: "66/66/6666", isDone: true, routine: .init(name: "Rotina")))
}
