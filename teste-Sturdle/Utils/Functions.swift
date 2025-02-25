import Foundation

func formattedDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyyy" // Formato desejado
    return dateFormatter.string(from: date)
}
