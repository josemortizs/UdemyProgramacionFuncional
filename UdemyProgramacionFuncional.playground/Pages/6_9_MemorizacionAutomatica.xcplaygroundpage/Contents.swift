import UIKit

var fibonacciMemo = Dictionary<Int, Double>()

func fibonacciMM(n:Int) -> Double {
    if let result = fibonacciMemo[n] {
        return result
    }
    let result = n < 2 ? Double(n) : fibonacciMM(n: n - 1) + fibonacciMM(n: n - 2)
    fibonacciMemo[n] = result
    return result
}

let phiMM = fibonacciMM(n: 45) / fibonacciMM(n: 44)

func memoize<T:Hashable,U>(body: @escaping ((T) -> U, T) -> U) -> (T) -> U {
    var memo = [T:U]()
    var result:((T) -> U)!
    result = { key in
        if let q = memo[key] {
            return q
        }
        let r = body(result, key)
        memo[key] = r
        return r
    }
    return result
}

let fibonacciMA = memoize { fibonacci, number in
    number < 2 ? number : fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacciMA(55)

let factorial = memoize { factorial, x in
    x == 0 ? 1 : x * factorial(x - 1)
}

factorial(15)
