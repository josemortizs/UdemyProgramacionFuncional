import SwiftUI

@resultBuilder
struct TextBuilder {
    static func buildBlock(_ components: String...) -> String {
        components.joined(separator: "\n")
    }
    static func buildOptional(_ component: String?) -> String {
        component ?? ""
    }
}

func makeText(@TextBuilder _ content: () -> String) -> String {
    content()
}

var semaforo = true

let texto = makeText {
    "Hola"
    if semaforo {
        "Entré"
    }
    "Qué"
    "Tal"
    ","
    "¿Cómo estamos?"
}

print(texto)

