//
//  RoutinesView.swift
//  teste-Sturdle
//
//  Created by found on 07/02/25.
//

import SwiftUI
import SwiftData

struct RoutinesView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    @Query var routines: [Routine]
    @State var isShowingSheet = false
    @State var doesHaveRoutine = false
    
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 201, height: 75)
                    .background(
                        Image("sturdlelogo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 201, height: 75)
                            .clipped())
                
                if doesHaveRoutine == false{
                    HStack(alignment: .center, spacing: 10) {
                        Text("Ops, parece que você ainda não criou nenhuma rotina!")
                            .font(
                                Font.custom("SF Pro Display", size: 15)
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4))
                    }
                    .padding(.horizontal, 6)
                    .padding(.vertical, 11)
                    .frame(width: 394, height: 52, alignment: .center)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .cornerRadius(50)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                }
                
                ForEach(routines){ routine in
                    RoutineView(routine: routine)
                }
                
                
                Spacer()
                
                Button{
                    isShowingSheet = true
                }label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundStyle(.blueSturdle.gradient, .greenSturdle.gradient)
                        .frame(width: 50, height: 65)
                }
                
            }
            .sheet(isPresented: $isShowingSheet){
                AddRoutineView(isShowingSheet: $isShowingSheet, doesHaveRoutine: $doesHaveRoutine)
            }
        }
    }
}

#Preview {
    RoutinesView()
}
