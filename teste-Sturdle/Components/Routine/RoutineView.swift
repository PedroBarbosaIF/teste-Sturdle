//
//  RoutineView.swift
//  teste-Sturdle
//
//  Created by found on 11/02/25.
//

import SwiftUI
import SwiftData

struct RoutineView: View {
    
    @State var routine: Routine
    @Query var tasks: [Task]
    @State var tasksFromRoutine: [Task] = []
    @Environment(\.modelContext) var modelContext
    
//    init(routine: Routine) {
//        self.routine = routine
//    }
        
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 392, height: 162)
                .background(LinearGradient(colors: [.greenSturdle,.greenSturdle,.blueSturdle],
                                           startPoint: .top,
                                           endPoint: .bottom))
                .cornerRadius(24)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            
            VStack{
                HStack{
                    Text(routine.name)
                        .font(.system(size: 25, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 28)
                        
                    Spacer()
                        .frame(width: 140, height: 10)
                    
                    
                    Button{
                        modelContext.delete(routine)
                    }label: {
                        Image(systemName: "trash")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundStyle(.white)
                            .frame(width: 30, height: 30)
                    }
                }
                
                Spacer()
                    .frame(width: 10, height: 60)
                
                HStack{
                    Text("0/8")
                        .font(.system(size: 25, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 113, height: 28)
                    
                    
                    Spacer()
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 353, height: 8)
                        .background(Color(red: 1, green: 1, blue: 1))
                        .cornerRadius(24)
                    
                    HStack{
                        //BARRA DE PROGRESSO
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width:200, height: 8)
                            .background(Color(red: 0.01, green: 1, blue: 0.82))
                            .cornerRadius(24)
                        
//                        Spacer()
//                            .frame(width: 350, height: 1)
                    }
                }
            }
        }
    }
}

#Preview {
    
    RoutineView(routine: .init(name: "nomeDaRoutina"))
}
