
import SwiftUI

struct AttributedStringDemo: View {
    var attr1Demo: AttributedString {
        var myString = AttributedString("Attributed String")
        myString.foregroundColor = .orange
        myString.backgroundColor = .black
        myString.font = .largeTitle
        myString.baselineOffset = 0
        myString.kern = 7
        return myString
    }
    var attr2Demo: AttributedString {
        let codingIsAwesome = "Coding is Awesome! Let's code together!"
        var myString = AttributedString()
        myString.font = .title
        for (i , ch) in codingIsAwesome.enumerated(){
            var letterString = AttributedString( String(ch) )
            let red = 0.3
            let green = 0.3
            let blue = Double( i % codingIsAwesome.count) / Double( codingIsAwesome.count )
            letterString.foregroundColor = Color(red: red, green: green, blue: blue)
            letterString.baselineOffset = Double(i)
            myString += letterString
        }
        return myString
    }
    var attr3Demo: AttributedString {
        let codingIsAwesome = "Coding is Awesome! Let's code together!"
        var myString = AttributedString()
        
        for (i, ch) in codingIsAwesome.enumerated() {
            var letterString = AttributedString( String(ch) )
            let count = CGFloat(codingIsAwesome.count)
            let j = CGFloat(codingIsAwesome.count / 2 - i)
            letterString.baselineOffset = smileFactor * j * j / count
            myString += letterString
        }
        return myString
    }
    var attr4Demo: AttributedString {
        let codingIsAwesome = "Coding is Awesome! Let's code together!"
        var myString = AttributedString()
        let listOfWords = codingIsAwesome.split(separator: " ")
        for (i, word) in listOfWords.enumerated() {
            var wordString = AttributedString("\(word) ")
            let j = 10 * CGFloat(i % 2)
            wordString.baselineOffset = j
            wordString.kern = -3
            myString += wordString
        }
        return myString
    }
    var attr5Demo: AttributedString {
        var myString = AttributedString("Underline Demo")
        myString.font = .title
        
        myString.underlineStyle = Text.LineStyle(pattern: .solid, color: .blue)
        
        return myString
    }
    @State var smileFactor = 5.0
    @State private var flip = 0.0
    @State private var step = 0.0
    
    func stepRainbowText(_ text: String = "Coding is Awesome! Let's code together!", step: CGFloat) -> AttributedString {
        let codingIsAwesome = text
        var myString = AttributedString()
        let listOfWords = codingIsAwesome.split(separator: " ")
        for (i, word) in listOfWords.enumerated() {
            var wordString = AttributedString("\(word) ")
            let j = step * CGFloat(i % 2)
            wordString.baselineOffset = j
            myString += wordString
        }
        return myString
    }
    

    //MARK: - View
    var body: some View {
        ScrollView{
            Text(attr1Demo)
            Text(attr2Demo)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray.opacity(0.3).clipShape(.rect(cornerRadius: 5)))
            Text(attr3Demo)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .rotation3DEffect(Angle(degrees: flip * 180), axis: (x: 1.0, y: 0.0, z: 0.0))
                .background(Color.black.clipShape(.rect(cornerRadius: 5)))
            HStack {
                Button("😊") {
                    withAnimation {
                        smileFactor = abs(smileFactor)
                    }
                }
                .frame(maxWidth: .infinity)
                Button("😎") {
                    withAnimation {
                        flip = 1 - flip
                    }
                }
                .frame(maxWidth: .infinity)
                Button("😭") {
                    withAnimation {
                        smileFactor = -abs(smileFactor)
                    }
                }
                .frame(maxWidth: .infinity)

            }
            .font(.title)
            Text(attr4Demo)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .background(Color.black.clipShape(.rect(cornerRadius: 5)))
            Text(stepRainbowText("no act of kindness, no matter how small, is ever wasted.".capitalized,step: step))
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .background(Color.black.clipShape(.rect(cornerRadius: 5)))
            Slider(value: $step, in: -30...30)
            Text(attr5Demo)
        }
        .padding()
        
    }
}

#Preview {
    AttributedStringDemo()
}
