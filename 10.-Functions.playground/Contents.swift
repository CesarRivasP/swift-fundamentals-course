import UIKit

func greeting(person: String) -> String {
    let greet = "Hola, \(person)!"
    return greet
}
greeting(person: "Cesar Rivas")
greeting(person: "Maria Ovalles")

func sayHelloWorld() -> String {
    return "Hello world!"
}
sayHelloWorld()
sayHelloWorld()
sayHelloWorld()

func greeting(person: String, isMale: Bool) -> String {
    if isMale {
        return "Bienvenido Caballero \(person)"
    } else {
        return "Bienvenida Señorita \(person)"
    }
}
greeting(person: "Cesar Rivas", isMale: true)
greeting(person: "Maria Jose", isMale: false)

func greet2(person: String){
    print("Hola \(person)")
}
greet2(person: "Cesar Rivas")
greet2(person: "Maria Jose")

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}
printAndCount(string: "Hola que tal")
printWithoutCounting(string: "Hola que tal")

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax - value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [6,3,-8,3,1,9,5,15,-9])
print("Los valores se hallan entre \(bounds!.min) y \(bounds!.max)")

// ************** Params / Variadics
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6){
    // firstParamName variable de tipo int
    // secondParamName variable de tipo int
    print(firstParamName + secondParamName)
}
someFunction(f1: 5, f2: 1)
someFunction(f1: 5)

// _ denota una ausencia de etiqueta para el parametro.
func gretting(_ person: String, from homeTown: String) -> String {
    return "Hola \(person) un placer que nos visites desde \(homeTown)"
}
gretting("Cesar", from: "Caracas")

// funcion con parametro variadico. Permitir indicar que el parametro puede ser uno, tres, o treinta elementos de un mismo tipo.
func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
mean(1,2,3,4,5)
mean(1.5,2.7)
mean(3,4.5,18.75)

// *************** Parámetros tipo inout ******************
var x = 5;
func addOne(number: Int){ // los parametros son solo de tipo lectura
    var number1 = number
    number1 += 1
    print("El numero ahora vale \(number1)")
}
addOne(number: x)

func swapTwoInts(_ a: inout Int, _ b: inout Int){
    // al agregar el inout se puede hacer la permutacion o cambio con las variables.
    let tempA = a
    a = b
    b = tempA
}
var someInt = 3
var otherInt = 7
print("1.- Some int vale \(someInt) y other int vale \(otherInt)")
// el & quiere decir que el paso de las variables no es por copia, sino por referencia.
swapTwoInts(&someInt, &otherInt)
print("2.- Some int vale \(someInt) y other int vale \(otherInt)")
// Asi podemos usar los valores de entrada.

// ************* Function Types *****************
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
} // type: (Int, Int) -> Int

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
} // type: (Int, Int) -> Int

func printHW(){
    print("Hello world")
} // type: () -> void

var mathFunction: (Int, Int) -> Int = addTwoInts
mathFunction(4,5)

func printMathResult(_ mathFuction: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Resultado: \(mathFuction(a, b))")
}

printMathResult(multiplyTwoInts, 5, 9)

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var value = 7
let moveNearerZero = chooseStepFunction(backward: value > 0)

while value != 0 {
    print("Value actual: \(value)....")
    value = moveNearerZero(value)
}
print("Ceroooooo")


// ************ Funciones dentro de funciones ****************
// Asi se ofuzcan las funciones
func chooseStepFunctions(backward: Bool) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int {
        return input + 1
    }

    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
    
    return backward ? stepBackward : stepForward
}
let valueTest = 7
let newResult = chooseStepFunctions(backward: valueTest > 0)
print("Nuevo resultado \(newResult(valueTest))")
