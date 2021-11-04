import UIKit

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]

let reduce1 = array.reduce(0) { $0 + $1 }
let reduce2 = array.reduce(0, { $0 + $1 } )
reduce1

let reduce3 = array.reduce(0,+)
let reduce4 = array.reduce(1,*)

reduce3
reduce4

let comma = array.reduce("") { "\($0),\($1)" }
comma.dropFirst()

let comma2 = array.reduce(into: "") { acumulado, valor in
    acumulado += "\(valor),"
}
comma2.dropLast()
