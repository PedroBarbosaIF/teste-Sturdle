import Foundation
import SwiftData

@Model
class Task{
    var name: String
    var deadline: String
    var isDone: Bool
    var routine: Routine
    
    
    init(name: String, deadline: String, isDone: Bool, routine: Routine) {
        self.name = name
        self.deadline = deadline
        self.isDone = isDone
        self.routine = routine
    }
}
