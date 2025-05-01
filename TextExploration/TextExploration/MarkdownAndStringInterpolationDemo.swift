
import SwiftUI

struct MarkdownAndStringInterpolationDemo: View {
    
    var rainbowWelcome: Text {
        Text("*Welcome*")
            .foregroundStyle(rainbow)
    }
   
    var body: some View {
        Text("\(rainbowWelcome) to the wonderful world of \(programText)")
            .padding()
            .font(.largeTitle)
            .tint(.green)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    MarkdownAndStringInterpolationDemo()
}
