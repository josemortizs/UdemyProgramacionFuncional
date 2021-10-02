import UIKit

func fibonacci(pos:Int) -> Double {
    pos < 2 ? Double(pos) : fibonacci(pos: pos - 1) + fibonacci(pos: pos - 2)
}

var fibonacciMemo:[Int:Double] = [:]

func fibonacciMM(pos:Int) -> Double {
    if let result = fibonacciMemo[pos] {
        return result
    }
    let result = pos < 2 ? Double(pos) : fibonacciMM(pos: pos - 1) + fibonacciMM(pos: pos - 2)
    fibonacciMemo[pos] = result
    return result
}

fibonacciMM(pos: 125)

