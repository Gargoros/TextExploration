
import SwiftUI

struct AcrosticPoemView: View {
    
    var body: some View {
        VStack {
            Text("\(Text("D").foregroundColor(.red).bold().font(.largeTitle))ream. \(Text("Very cool").foregroundColor(.green))")
                       .font(.title)
            VStack(alignment: .leading){
                ForEach(poem){line in
                    colorFirstLetterOfLineOfPoetry(line: line, color: .red)
                }
                .font(.headline)
            }
            .padding(10)
        }
        .padding()
    }
    func colorFirstLetterOfLineOfPoetry(line: LineOfPoetry, color: Color = .blue) -> Text{
        Text("\(Text(line.firstChar).foregroundColor(color).bold())\(Text(line.remainingLine))")
    }
}

#Preview {
    AcrosticPoemView()
}
