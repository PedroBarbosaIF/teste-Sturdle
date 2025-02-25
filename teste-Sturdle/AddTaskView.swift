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
    @State var deadline: String = ""
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Topic name: ")
                TextField("write here", text: $name)
            }
            HStack(alignment: .center) {
                Spacer()
                Text("Topic deadline: ")
                TextField("XX/XX/XXXX", text: $deadline)
            }
            
            Button{
                let task = Task(name: name,
                                deadline: deadline,
                                isDone: false,
                                routine: routine)
                modelContext.insert(task)
                name = ""
                deadline = ""
                dismiss()
            }label: {
                Text("Create")
            }
        }
    }
}

#Preview {
    @Previewable @State var isShowingSheet:Bool = false

    AddTaskView(isShowingSheet: $isShowingSheet, routine: .init(name: "routina massa"))
}
