import UIKit


//: ![Árbol](arbol.jpg)
enum Arbol<Int> {
    case Vacio
    indirect case Nodo(Arbol<Int>, Int, Arbol<Int>)
}

let n4:Arbol = .Nodo(.Vacio, 4, .Vacio)
let n7:Arbol = .Nodo(.Vacio, 7, .Vacio)
let n13:Arbol = .Nodo(.Vacio, 13, .Vacio)

let n1:Arbol = .Nodo(.Vacio, 1, .Vacio)
let n6:Arbol = .Nodo(n4, 6, n7)
let n14:Arbol = .Nodo(n13, 14, .Vacio)

let n3:Arbol = .Nodo(n1, 3, n6)
let n10:Arbol = .Nodo(.Vacio, 10, n14)

let root:Arbol = .Nodo(n3, 8, n10)

func contiene(inicio:Arbol<Int>, dato:Int) -> Bool {
    guard case let .Nodo(izq, num, der) = inicio else {
        return false
    }
    print("Buscando en nodo \(num)")
    if dato == num {
        return true
    } else if dato < num {
        return contiene(inicio: izq, dato: dato)
    } else if dato > num {
        return contiene(inicio: der, dato: dato)
    } else {
        return false
    }
}

contiene(inicio: root, dato: 14)
contiene(inicio: root, dato: 12)

