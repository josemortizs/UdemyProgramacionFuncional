import UIKit

func incrementar(_ num:Int) -> Int {
    num + 2
}

let i = incrementar

func masMenos2(num:Int, masMenos:Bool) -> Int {
    func incrementar(_ num:Int) -> Int {
        num + 2
    }
    
    func decrementar(_ num:Int) -> Int {
        num - 2
    }
    return masMenos ? incrementar(num) : decrementar(num)
}

masMenos2(num: 3, masMenos: true)
masMenos2(num: 3, masMenos: false)

func cuenta2(masMenos:Bool) -> (Int) -> Int {
    func incrementar(_ num:Int) -> Int {
        num + 2
    }
    
    func decrementar(_ num:Int) -> Int {
        num - 2
    }
    return !masMenos ? incrementar : decrementar
}

var valor = -16
let count = cuenta2(masMenos: valor > 0)

while valor != 0 {
    valor = count(valor)
    print(valor)
}

