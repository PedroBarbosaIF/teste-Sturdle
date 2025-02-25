//
//  TasksView.swift
//  teste-Sturdle
//
//  Created by found on 21/02/25.
//

import SwiftUI
import SwiftData

struct TasksView: View {
    @State var routine: Routine
    @State var isPresentedAddTaskView = false
    
    @Query var tasks: [Task]
    @State var tasksFromRoutine: [Task] = []
    @State var tasksDoneFromRoutine: [Task] = []
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    HStack{
                        Text("Topics")
                        Spacer()
                        // .frame(width: 320)
                        
                        Button{
                            isPresentedAddTaskView = true
                        }label: {
                            Image(systemName: "plus")
                        }
                    }
                    
                    ForEach(tasksFromRoutine){ task in
                        TaskView(task: task)
                    }
                    
                }
            }
            .frame(alignment: .top)
            .sheet(isPresented: $isPresentedAddTaskView){
                AddTaskView(isShowingSheet: $isPresentedAddTaskView,
                            routine: routine)
            }
        }
        .task(id: tasks) {
            tasksFromRoutine.removeAll()
            tasksDoneFromRoutine.removeAll()
            
            for task in tasks {
                if task.routine.id == routine.id {
                    tasksFromRoutine.append(task)
                }
                if task.isDone == true {
                    tasksDoneFromRoutine.append(task)
                }
            }
            
            tasksFromRoutine.sort(by: { $0.name < $1.name })
                }
        .navigationTitle(routine.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    
    TasksView(routine: .init(name: "routina massa"))
        .modelContainer(for: [Task.self, Routine.self])
}
