
import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Acrostic Poems"){
                    AcrosticPoemView()
                }
                NavigationLink("Markdown"){
                    MarkdownDemo()
                }
                NavigationLink("Markdown and String Interpolation"){
                    MarkdownAndStringInterpolationDemo()
                }
                NavigationLink("Markdown and Code"){
                    DisplayCodeWithMarkdown()
                }
                NavigationLink("OpenURLAction"){
                    OpenUrlActionDemo()
                }
                NavigationLink("Pluralization and Inflection"){
                    PluralizationDemo()
                }
                NavigationLink("List, Member style and Measurements"){
                    ListMemberStyleMeasurementsDemo()
                }
                NavigationLink("Dates and the Text View"){
                    TextDatesDemo()
                }
                NavigationLink("Attributed String"){
                    AttributedStringDemo()
                }
            }
            .navigationTitle("Style and Text View")
        }
    }
}

#Preview {
    MainView()
}
