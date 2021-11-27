import UIKit

func muestraAlgo(dato:Int) {
    print(dato)
}

func muestraAlgo(dato:String) {
    print(dato)
}

func muestraAlgo(dato:Double) {
    print(dato)
}

muestraAlgo(dato: 2.9)

func mostrarAlgo<T>(dato:T) {
    print(dato)
}

mostrarAlgo(dato: 5)
mostrarAlgo(dato: "Hola")
mostrarAlgo(dato: 2.9)

let a = Array<Int>(repeating: 0, count: 100)
