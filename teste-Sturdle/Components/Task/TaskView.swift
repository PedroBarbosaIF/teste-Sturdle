//
//  TaskView.swift
//  teste-Sturdle
//
//  Created by found on 12/02/25.
//

import SwiftUI

struct TaskView: View {
    

    @State var task: Task
    @Environment(\.modelContext) var modelContext
    
    
    
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
                VStack(alignment: .leading){
                    Text(task.name)
                        .font(.system(size: 20, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 113, height: 28, alignment: .leading)
                    Spacer()
                    Text(formattedDate(task.deadline))
                        .font(.system(size: 18, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        //.frame(width: 123, height: 28)
                }
                .padding(.leading, 16)
                
                
                Spacer()
                    .frame(width: 30)
                
                VStack{
                    Button{
                        modelContext.delete(task)
                    }label: {
                        Image(systemName: "trash")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundStyle(.white)
                            .frame(width: 20, height: 30)
                    }
                    Spacer()
                    
                    Button{
                        task.isDone.toggle()
                    }label: {
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
        }
    }
}

#Preview {
    TaskView(task: .init(name: "macosmi", deadline: .now, isDone: true, routine: .init(name: "Rotina")))
}
