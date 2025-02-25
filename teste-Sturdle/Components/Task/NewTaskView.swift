//
//  NewTaskView.swift
//  teste-Sturdle
//
//  Created by found on 21/02/25.
//

import SwiftUI
import SwiftData

struct NewTaskView: View {
    @State var task: Task
    @Environment(\.modelContext) var modelContext

//    init(task: Task) {
//        self.task = task
//    }
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 392, height: 67)
                .background(.greenSturdle)
                .shadow(color: .black, radius: 7, x: 5, y: -8)
                .cornerRadius(15)
            
            HStack{
                Spacer()
                    .frame(width: 23)
                
                Button{
                    task.isDone.toggle()
                }label: {
                    Image(systemName: task.isDone ? "checkmark.square" : "square")
                        .resizable()
                        .foregroundStyle(.white )
                        .padding(.horizontal, 0)
                        .padding(.top, 0)
                        .padding(.bottom, 4.10921)
                        .frame(width: 28, height: 32)
                }
                
                Text(task.name)
                  .font(Font.custom("Inter", size: 20))
                  .foregroundColor(.white)
                  .frame(width: 280, height: 27, alignment: .topLeading)
                
                
                
                Button{
                    modelContext.delete(task)
                }label: {
                    Image(systemName: "trash")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundStyle(.white)
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
                
            }
        }
    }
}

func fakeTask() -> Task{
    return Task(name: "TESTE MUITO PICAaaaaaa",
                deadline: .now,
                isDone: false,
                routine: fakeRoutine())
}

func fakeRoutine() -> Routine{
    return Routine(name: "bolsonaro")
}

#Preview {
    NewTaskView(task: fakeTask())
}
