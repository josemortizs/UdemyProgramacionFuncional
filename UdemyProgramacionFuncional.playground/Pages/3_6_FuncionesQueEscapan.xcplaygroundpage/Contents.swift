import UIKit

var arrayC: [() -> ()] = []

let closure = { print("Hola") }
arrayC.append(closure)
arrayC.append {
    print("Adios")
}

arrayC.count


class Test {
    var x = 10
    
    func completado(completion: () -> ()) {
        completion()
    }
    
    
    // Con @escaping estamos indicando que el closure que recibe no va a ser ejecutado dentro del ámbito que
    // lo recibe, en la función que lo recibe, sino que "escapa" de este ámbito, se saca fuera, se ejecutará
    // en otro sitio, otra función, variable...
    func completadoE(completion: @escaping () -> ()) {
        arrayC.append(completion)
    }
    
    func test() {
        completado {
            x = 20
        }
        
        completadoE {
            print("Hola")
        }
        
        // Error: Al escapar x = 20 y almacenarse en arrayC, el compilador no puede garantizar que x siga existiendo una vez que se ejecute dicha instrucción, x = 20.
        // Por eso antecedemos a x = 20, self. Quedando: self.x = 20
        // Ahora, al almacenar self.x = 20 en arrayC, la instancia de test1 se "capturará" en memoria, no se reciclará. Con eso se garantiza que cuando se vaya a ejecutar,
        // este closure, la variable x seguirá existiendo, ya que la instancia de Test, llamada test1, seguirá almacenada en memoria.
        completadoE { [weak self] in
            self?.x = 25
            print(self?.x ?? 0)
        }
    }
    
}


//let test1 = Test()
//test1.x
//test1.test()
//test1.x

do {
    let test1 = Test()
    test1.x
    test1.test()
    test1.x
}

// Si ejecutamos arrayC.last?() sin [weak self] in, en la línea 42, veremos que, aunque test1 ya no debería estar retenido, pues ha finalizado su ámbito, dentro del do {}, x sigue valiendo 25 y así se imprime.
// Se debe a que se ha quedado retenido en memoria provocando lo que se llama una "fuga de memoria". Para esto se usa [weak self], con lo que se le puede indicar un valor opcional en caso de que se deba reciclar
// el objeto.
arrayC.last?()

