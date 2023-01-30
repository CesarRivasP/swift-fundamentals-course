import UIKit
import Foundation

var myFirstVariable = "Hello, hackermen!"
var myFirstVNumber = 10

print(myFirstVariable)

myFirstVariable = "Bienvenidos a mouredev"

print(myFirstVariable)

// No podemos asignar un tipo int a una variable tipo string
// myFirstVariable = 1

var secondVariable = "Hello, hackermen!!!!"

print(secondVariable)

secondVariable = myFirstVariable

print(secondVariable)


myFirstVariable = "Suscribete!!"

print(secondVariable)


// -- Constantes --
let myFirstConstant = "Te ha gustado el tutorial?"

print(myFirstConstant)

// Una constante no puede modificar su valor
// myFirstConstant = "Hello, hackermen!!!! Cambiando el valor"

let mySecondConstant = myFirstVariable

print(mySecondConstant)
