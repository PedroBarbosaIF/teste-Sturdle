//
//  AddTaskView.swift
//  teste-Sturdle
//
//  Created by found on 24/02/25.
//

import SwiftUI
import SwiftData

struct AddTaskView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @Binding var isShowingSheet: Bool
    
    @State var routine: Routine
    @State var name: String = ""
    @State var deadline = Date()
    
    var body: some View {
        VStack {
            Text("Topic name: ")
                .bold()
                .font(.largeTitle)
            TextField("Write here!", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            VStack(alignment: .center) {
                Spacer()
                Text("Topic deadline: ")
                    .bold()
                    .font(.largeTitle)
                DatePicker(
                    "Topic deadline:",
                    selection: $deadline,
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
            }
            
            Button {
                let task = Task(name: name,
                                deadline: deadline,
                                isDone: false,
                                routine: routine)
                modelContext.insert(task)
                name = ""
                deadline = Date()
                dismiss()
            } label: {
                Text("Create")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
}

struct AddTaskView_Previews: PreviewProvider {
    @State static var isShowingSheet: Bool = false
    
    static var previews: some View {
        AddTaskView(isShowingSheet: $isShowingSheet, routine: Routine(name: "routina massa"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
