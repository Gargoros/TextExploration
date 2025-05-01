
import SwiftUI

struct TextDatesDemo: View {
    let eventData = Date(timeIntervalSinceNow: 60)
    let event = Date()
    let dateInterval = DateInterval(start: Date(), end: Date(timeIntervalSinceNow: 30))
    
    
    var body: some View {
        Form{
            Section("Intervals"){
                Text(Date.now...Date.now.addingTimeInterval(60))
                Text(dateInterval)
            }
            Section("Relative, offset and timer styles"){
                Text("Event will occur in \(eventData, style: .relative)")
                Text("Event will occur in \(eventData, style: .offset)")
                Text("Event will occur in \(eventData, style: .timer)")
            }
            Section("Format Date and Time"){
                Text(Date(), format: .dateTime)
                Text(Date(), format: .dateTime.hour())
                Text(Date(), format: .dateTime.minute())
                Text(Date(), format: .dateTime.year())
                Text(Date(), format: .dateTime.day())
                Text(Date(), format: .dateTime.hour().month())
                Text(Date(), format: .dateTime.hour().minute())
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    TextDatesDemo()
}
