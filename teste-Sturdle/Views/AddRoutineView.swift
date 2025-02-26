//
//  AddRoutineView.swift
//  teste-Sturdle
//
//  Created by found on 18/02/25.
//

import SwiftUI
import SwiftData

struct AddRoutineView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @Binding var isShowingSheet: Bool
    @State var title = ""
    @Binding var doesHaveRoutine: Bool
    
    var body: some View {
        List {
            Section {
                HStack {
                    TextField("Routine", text: $title)
                    Button {
                        let routine = Routine(name: title)
                        modelContext.insert(routine)
                        title = ""
                        doesHaveRoutine = true
                        dismiss()
                    } label: {
                        Text("SAVE")
                    }
                }
            } header: {
                Text("New Routine")
            }
        }
    }
}

#Preview {
    @Previewable @State var isShowingSheet:Bool = false
    
    AddRoutineView(isShowingSheet: $isShowingSheet,
                   doesHaveRoutine: .constant(false))
}
