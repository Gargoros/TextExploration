
import SwiftUI

struct LineOfPoetry: Identifiable {
    let id = UUID()
    let line: String
    var firstChar: String {
        if let first = line.first { return String(first) }
        else { return "" }
    }
    var remainingLine: String {
        return String(line.dropFirst())
    }
}

let poem: [LineOfPoetry] = [
    .init(line: "Dancing in the moonlight, free,"),
    .init(line: "Reaching for the stars, we see."),
    .init(line: "Every wish, a whispered stream,"),
    .init(line: "Aiming high, in every scheme."),
    .init(line: "Moments woven with desire,"),
    .init(line: "Soaring dreams, higher and higher."),
]

let favoriteWebSites = """
***My Favorite Websites***
___My Favorite Websites___

1. **[Figma](https://figma.com)**: A collaboration interface design tool for teams to create, prototype, and collaborate on digital design in real time.
2.*[Law of UX](https://lawsofux.com)*: A collection of principles that describe how users interact with interfaces, guiding designers to create more effective and intuitive user experiences.
3.***[Pexels](https://pexels.com)***: A platform offering free stock photos, videos, and music that can be used for personal and commercial projects without attribution.

~~Feel free to check them out!~~
"""

let rainbow = LinearGradient(
    colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink],
    startPoint: .topTrailing,
    endPoint: .bottomLeading
)
let programText = Text("**[programming](https://en.wikipedia.org/wiki/Computer_programming)**")

let codeString = """
**A Swift View**

`import SwiftUI`

`struct DisplayCodeWithMarkdown: View {`
`var body: some View {`
    `Text("Hello, World!")`
`}`
`}`

`#Preview {`
`DisplayCodeWithMarkdown()`
`}`

"""

let fontAwesome = "*[Font awesome](https://fontawesome.com/search?m=free&o=r)*"
