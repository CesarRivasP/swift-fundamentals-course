import UIKit

var greeting = "Hello, playground"

// String character nos dan acceso a las letras
// String literal, es cuando se usan las comillas de inicio y cierre
let somestring = "soy un string cualquier"

// string mutilinea
//  El \ aqui evita que el Intro funcione, y quita el salto de linea
let multilnestring = """

    Hola que tal\
    como te fue
    Un saludooo
"""
print(multilnestring)

// El \ permite que cuando un string tenga un caracter que pueda generar una mala interpretacion, este sea admitido
let wiseWords = "\"La imaginacion es mas importante que el saber\" - Albert Einstein"
// Para caracteres unicode
let dolarSign = "\u{24}"
let blackheart = "\u{2665}"
let heart = "\u{1f496}"

// Crear strings vacios
var emptyString = ""
var anotherString = String("")

// Propiedades de los strings
if emptyString.isEmpty {
    print("nada que ver aqui")
} else {
    print("el string tiene un valor")
}
var newSomeString = "un caballooo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

// Esto no se puede, porque let es una constante
// let stringTest = "Cesar Rivas"
// stringTest += " y Maria"


// TIPOS DE DATOS EVALUADOS E INVALUADOS
/* Evaluados: describe un tipo de dato que contiene todo el valor en si mismo, y
que cuando se quiere hacer una copia de el, la copia es real. Es decir terminan siendo dos valores.
 El original y una copia de este
 - Al hacer copias de datos evaluados cada copia es independiente, estan asignados a distintos lugares en la memoria RAM, y al modificar una, no toca la otra.
*/

var a = "A"
var b = "B"
print("a vale \(a) y la b vale \(b)")
b = a
print("a vale \(a) y la b vale \(b)")
b = "C"
print("a vale \(a) y la b vale \(b)")
a = "D"
print("a vale \(a) y la b vale \(b)")

//***** nota: todos los tipos de datos vistos hasta ahorita, son tipo de dato evaluado. ***

// **********     CARACTERES     **********

let name = "Cesar Rivas 😃"

for character in name {
    print("El caracter \(character)")
}
print(name.count)

let exclamationMark: Character = "!"
let nameChars: [Character] = ["J", "U", "A", "N"]
var nameString = String(nameChars)  // Esto termina juntando todas las letras del array nameChars para formar una palabra

let compoundName = "Juan " + "Gabriel"

// De inicio, un string con un character no pueden ser concatenados
// nameString + exclamationMark  esto se podria solucionar sin tener que pasar por un casting

// El metodo append permite añadir otro caracter, string o secuencia al final
nameString.append(exclamationMark)

let multiplier = 3
// Esto es un Literal, lo que quiere decir, que en esta definicion, aun no se ha formado el string.
// Hay que tomar en cuenta que la variable fue definida como una constante, por lo que esta no se puede alterar
// let message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)".append(exclamationMark)

// Forma correcta
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
// Ya aqui el string fue formado.
message.append(exclamationMark)


// **********     Indices de Strings     **********
let greetings = "Hola, Que tal?"
greetings[greetings.startIndex] // H
//greetings[greetings.endIndex] // Esto no funciona, porque se puede acceder a la anterior posicion a la ultima, no a la ultima
greetings[greetings.index(before: greetings.endIndex)] // Asi se accede a la ultima posicion
greetings[greetings.index(after: greetings.startIndex)] //Asi se obtiene el segundo caracter, el que viene despues del start index

// El plural de index en ingles es indices
for idx in greetings.indices {
    // print("\(greetings[idx]) - \(idx)")
    print("El numero print \(greetings[idx])", terminator: "-")
    // el print tiene una propiedad terminator que agregar un ultimo valor al final de cada print
}
/*
 Nota: el index no es un numero entero como en otros lenguajes, con el cual se pueda trabajar facilmente.
 El indice no se trata de una posicione en si, viene a ser un artefacto especial creado en swift para establecer posiciones
*/

var welcome = "Hola"
// Insertar elementos en un string
welcome.insert(contentsOf: "!!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal?", at: welcome.index(before: welcome.endIndex))
// Remover elementos en un string
welcome.remove(at: welcome.index(before: welcome.endIndex)) // retorna la letra que se removio
welcome

// range < welcome.endIndex
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex // -6 para irse 6 posiciones para atras del final de la palabra.
welcome.removeSubrange(range) // Se eliminaron las 6 ultimas letras
welcome


// ************* Substrings ******************
// Es extraer una pequeña parte del string original
greetings
let index = greetings.firstIndex(of: ",") ?? greetings.endIndex
// Retorna desde la primera coma hasta el inicio del string. Es decir, el string hasta que encuentra la primera ,
let firstPart = greetings[..<index] // Este es un Substring como type
let newString = String(firstPart) // Este si seria un string como type


/*
 - El substring en memoria, no apunta a una nueva referencia de un string nuevo,
 sino que almacena del string original a que posiciones de memoria hace referencia del string original.
 
 - La diferencia entre estos dos, es que el substring es una parte del string completo.
*/


// *************** PREFIJOS Y SUFIJOS ***************
// Comprobar si un string tiene sufijo o prefijo
// Con esto se pueden identificar patrones dentro de los strings
let newGreeting = "Hola, soy Cesar Rivas"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("Adios")
newGreeting.hasSuffix("s")

let collection = [
    "Act 1 Scene 1",
    "Act 1 Scene 2",
    "Act 1 Scene 3",
    "Act 1 Scene 4",
    "Act 1 Scene 5",
    "Act 2 Scene 1",
    "Act 2 Scene 2",
    "Act 2 Scene 3",
    "Act 2 Scene 4",
    "Act 2 Scene 5",
    "Act 3 Scene 1",
    "Act 3 Scene 2"
]

var act1SceneCount = 0
var act2SceneCount = 0
var act3SceneCount = 0
for scene in collection {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
    if scene.hasPrefix("Act 2") {
        act2SceneCount += 1
    }
    if scene.hasPrefix("Act 3") {
        act3SceneCount += 1
    }
}

print("El numero de escenas del acto 1 es: \(act1SceneCount)")
print("El numero de escenas del acto 2 es: \(act2SceneCount)")
print("El numero de escenas del acto 3 es: \(act3SceneCount)")


// *************** REPRESENTACIONES UNICODE ***************
let ghost = "¡¡¡Fantasma!!! 👻"

// Asi, cada letra se va a obtener en la representacion utf8 que toque.
for codeUnit in ghost.utf8 {
    print(codeUnit, terminator: " ")
}

print(" ")

for codeUnit in ghost.utf16 {
    print(codeUnit, terminator: " ")
}

print(" ")

// Como en utf16 aun no se podian almacenar todos los caracteres que se necesitaban, se resolvio por agregar
// la representacion unicodeScalars, o unicode representacion

// Esta representacion es capaz de guardar una referencia de cada caracter o simbolo
for codeUnit in ghost.unicodeScalars {
    print(codeUnit, terminator: " ")
}
