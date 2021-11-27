import SwiftUI
import PlaygroundSupport

struct Texts: View {
    
    var body: some View {
        VStack {
            Text("Hola,")
            Text("¿Qué")
            Text("tal")
            Text("estás?")
        }.frame(width: 300)
    }
}

PlaygroundPage.current.setLiveView(Texts())


@resultBuilder
struct TextBuilder {
    static func buildBlock(_ components: String...) -> String {
        components.joined(separator: "\n")
    }
}

func makeText(@TextBuilder _ content: () -> String) -> String {
    content()
}

let texto = makeText {
    "Hola"
    "Qué"
    "Tal"
    ","
    "¿Cómo estamos?"
}

print(texto)
