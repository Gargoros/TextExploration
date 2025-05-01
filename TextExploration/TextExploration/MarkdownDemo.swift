
import SwiftUI

struct MarkdownDemo: View {
    var body: some View {
        Text(LocalizedStringKey(favoriteWebSites))
        .tint(.red)
        .foregroundStyle(.black)
        .padding()
    }
}

#Preview {
    MarkdownDemo()
}
