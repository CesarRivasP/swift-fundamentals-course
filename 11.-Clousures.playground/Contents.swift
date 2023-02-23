import UIKit

// TIPOS DE FUNCIONES
// ******** GLOBAL FUNCTIONS *************

// ******** NESTED FUNCTIONS *************

// ******** CLOSURES *************
let names = ["Christian", "Ricardo", "Juan Gabriel", "Edgar", "Freddy"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward(names[2], names[1])
backward(names[2], names[3])

var reversedNames = names.sorted(by: backward)

/*
 Closure sintax
 No va a aparecer la palabra func
 no lleva nombre
 
 { (params) -> return type in
    // codigo del closure
 }
 */
reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2 })
// simplificado
reversedNames = names.sorted(by: {s1, s2 -> Bool in s1 > s2 })
// simplificado x2 -- $0 -> argumento en la posicion 0 - nivel experto
reversedNames = names.sorted(by: { $0 > $1 })
// simplificado x3
reversedNames = names.sorted(by: > )

// ***************** Trailing closure *****************
//func someFunctionThatTakesAClosure(closure: () -> Void){
//    // aqui iria el cuerpo de la funcion
//}
//
//someFunctionThatTakesAClosure(closure: {
//    // aqui iria el cuerpo del closure
//})
//
//someFunctionThatTakesAClosure {
//    // añadir el closure aqui
//}

reversedNames = names.sorted { $0 > $1 }

let digitNames = [0:"Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro", 5:"Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"]
let numbers = [16, 58, 510, 2127, -50]

let numberStrings = numbers.map { (number) -> String in
    // number es una constante que se esta re-conviertiendo en variable
    var number = number
    var output = ""
    repeat {
        number = number < 0 ? number * -1 : number
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

// ***************** Capturing closures *****************
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    // Es un capturing closure porque es capaz de capturar los valores que le rodean
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()
incrementBySeven()

incrementByTen()


// ***************** Escaping closures **********************
var completionHandlers: [() -> Void] = []
//func someFuncWithScapingClosure(completionHandler:  () -> Void) { forma normal, la cual no funciona en este contexto
func someFuncWithEscapingClosure(completionHandler:  @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
completionHandlers.count

func someFunctionWithNonEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    
    func doSomething() {
        someFuncWithEscapingClosure {
            // Necesita el self, porque no se puede escapar un closure sin indicarle donde debe buscar esa variable
            self.x = 100
        }
        someFunctionWithNonEscapingClosure {
            // este se ejecuta al momento de llamar a la funcion.
            x = 200
        }
    }
}

let instance = SomeClass()
print(instance.x)  // 10

instance.doSomething()
print(instance.x)  // 200

completionHandlers.count
completionHandlers.first?()
print(instance.x)  // 100

/*
“Se dice que un closure escapa a una función cuando el closure se pasa como un argumento a la función, pero se llama después del function returns. Cuando declaras una función que toma un closure como uno de sus parámetros, puedes escribir @escaping antes del tipo del parámetro para indicar que el closure puede escapar ".

Fragmento de: Apple Inc. “El lenguaje de programación Swift (Swift 5.2)”. Libros de Apple
*/
