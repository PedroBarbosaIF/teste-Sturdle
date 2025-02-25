import Foundation
import SwiftData

@Model
class Task{
    var name: String
    var deadline: Date
    var isDone: Bool = false
    var routine: Routine
    
    
    init(name: String, deadline: Date, isDone: Bool, routine: Routine) {
        self.name = name
        self.deadline = deadline
        self.isDone = isDone
        self.routine = routine
    }
}
