import UIKit

func masMenos2(num: Int, masMenos: Bool) -> Int {
    
    func incrementar(_ num: Int) -> Int {
        num + 2
    }
    
    func decrementar(_ num: Int) -> Int {
        num - 2
    }
    
    return masMenos ? incrementar(num) : decrementar(num)
}

masMenos2(num: 3, masMenos: true)
masMenos2(num: 3, masMenos: false)


/*
 
    La función incrementar o decrementar son funciones privadas
 
 */
