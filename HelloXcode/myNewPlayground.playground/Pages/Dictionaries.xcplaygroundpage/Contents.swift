//: [Previous](@previous)

import UIKit

// Forma vieja de declarar diccionarios
let myClassicDictionary = Dictionary<Int, String>()

// Forma actual de declarar diccionarios
var myModernDictionary = [Int:String]()

// A diferencia de los arrays, en los diccionarios los datos no estan ordenados

// Añadir datos
myModernDictionary = [001: "Andres", 002: "Cesar"]
// Si se agrega esto, no se agregarian estos valores, por lo contrario, se inicializaria de nuevo el diccionario, borrando lo que estaba
//myModernDictionary = [004: "Maria", 005: "Pedro"]
// Añadir un solo dato - ***SOLO SE PUEDEN AÑADIR DE ESTA MANERA***
myModernDictionary[003] = "Maria"
myModernDictionary[004] = "Pedro"
myModernDictionary[005] = "Maria Jose"


print(myModernDictionary[005])

// La clave del diccionario es unica
myModernDictionary[005] = "Maria Jose Ortiz" // Actualizacion de diccionario
// Otra forma de actualizar
myModernDictionary.updateValue("Maria Jose Ortiz Ovalles", forKey: 005) // Opcion clasica
myModernDictionary[005]


// Borrar un dato
myModernDictionary[005] = nil  // Manera moderna de llevarlo a cabo
myModernDictionary[005]

//Forma moderna de borrar un dato
myModernDictionary.removeValue(forKey: 005)
