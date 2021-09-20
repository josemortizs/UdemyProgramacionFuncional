import UIKit

func factorial(n:Int) -> Int {
    n == 0 || n == 1 ? 1 : n * factorial(n: n - 1)
}

factorial(n: 5)

// factorial(n: 5)
// 5 * factorial(4)
// 5 * (4 * factorial(3))
// 5 * (4 * (3 * factorial(2))
// 5 * (4 * (3 * (2 * factorial(1))
// 5 * (4 * (3 * (2 * 1)

func factorialTail(n:Int, currentFactorial:Int = 1) -> Int {
    print(currentFactorial, n, currentFactorial * n)
    return n == 0 ? currentFactorial : factorialTail(n: n - 1, currentFactorial: n * currentFactorial)
}

factorialTail(n: 5)

