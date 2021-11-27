import UIKit

func generateNumber(max:Int) -> Int {
    Int.random(in: 1...max)
}

func mas2(num:Int) -> Int {
    num + 2
}

func spell(number:Int) -> String {
    let formatter = NumberFormatter()
    formatter.locale = Locale(identifier: "es")
    formatter.numberStyle = .spellOut
    return formatter.string(for: number) ?? ""
}

func divisa(number:Int) -> String {
    "\(number)€"
}

generateNumber(max: 15)
spell(number: 4565)

spell(number: generateNumber(max: 15))

precedencegroup CompositionPrecedence {
    associativity: left
}

infix operator >>>: CompositionPrecedence

func >>><T,U,V>(lhs: @escaping (T) -> U, rhs: @escaping (U) -> V) -> (T) -> V {
    { rhs(lhs($0)) }
}

let spellOutRandom = generateNumber >>> spell
let randomDivisa = generateNumber >>> divisa
let mas2Divisa = mas2 >>> divisa

print(spellOutRandom(100))
print(randomDivisa(100))

print(mas2Divisa(4))
