
import SwiftUI

struct DisplayCodeWithMarkdown: View {

    var body: some View {        
        Text(LocalizedStringKey(codeString))
            .padding()
    }
}

#Preview {
    DisplayCodeWithMarkdown()
}
