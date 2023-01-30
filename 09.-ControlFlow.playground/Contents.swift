import UIKit


// **************** FOR IN *********************
//Array
let names = ["Ricardo Celis", "Juan Gabriel", "Edgar"]

for name in names {
    print("Hola \(name)")
}

// Diccionario
let numberOfLegs = ["spider": 8, "ant": 6, "dog": 4]
// Cuando hay diccionarios, se implementa mediante una tupla
for (animalName, legCount) in numberOfLegs {
    print("Animal: \(animalName), numero de patas: \(legCount)")
}

for idx in 1...5 {
    print("\(idx) x 3 = \(idx * 3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
    print(answer)
}

// Asi se podria pogramar un reloj.
var hour = 9
let minutes = 60
for tickMark in 0..<minutes {
    print("\(hour) : \(tickMark)")
}

// Por intervalos.
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print("Stride: \(hour) : \(tickMark)")
}

// **************** WHILE *********************
var i = 0
while i <= 10 {
    print("Aqui estoy \(i)")
    i += 1
}
print(i)

// El do while de swift
repeat {
    i += 1
} while i <= 10
print(i)

// **************** SENTENCIAS DE CONTROL *********************
// ******* if y else
var temperature = 18
if temperature <= 15 {
    print("Hace el frio, prende la calefaccion")
} else if temperature >= 25 { // mayor que 15
    print("Hace el calor, prende el aire acondicionado")
} else { // entre 15 y 25
    print("La sensacion termica es agradable")
}


// **************** SWITCH *********************
let someCharacter: Character = "A"
switch someCharacter.lowercased() {
    case "a":
        print("Es la primera letra del alfabeto")
    case "z", "Z":
        print("Es la ultima letra del alfabeto")
    default:
        print("Es alguna otra letra")
}

// **************** SWITCH USANDO RANGOS (INTERVAL MATCHING)*********************
let moons = 7890
let phrase = " Lunas en Saturno"
let naturalCount: String

switch moons {
    case 0:
        naturalCount = "No hay"
    case 1..<5:
        naturalCount = "Hay unas pocas"
    case 5..<12:
        naturalCount = "Hay bastantes"
    case 12..<100:
        naturalCount = "Hay decenas de"
    case 100..<1000:
        naturalCount = "Hay centenas de"
    default:
        naturalCount = "Hay muchisimas"
}
print("\(naturalCount) \(phrase)")

// **************** SWITCH USANDO TUPLAS *********************
let somePoint = (5,-8)

switch somePoint {
    case (0,0):
        print("El punto \(somePoint) es el origen de coordenadas.")
    case (_,0):
        print("El punto \(somePoint) se halla sobre el eje de las x.")
    case (0,_):
        print("El punto \(somePoint) se halla sobre el eje de las y.")
    case (-2...2,-2...2):
            print("El punto \(somePoint) se halla en el interior del cuadrado del lado 4")
    default:
        print("El punto \(somePoint) esta en algun otro lado")
}

let anotherPoint = (5,-2)

switch anotherPoint {
    case (let x,0):
        print("Sobre el eje de las X, con valor \(x)")
    case (0,let y):
        print("Sobre el eje de las Y, con valor \(y)")
    case let (x,y) where x == y:
        print("El punto se haya sobre la recta x = y")
    case let (x,y) where x == -y:
        print("El punto se haya sobre la recta x = -y")
    case let (x,y):
        print("En algun otro lugar del plano, en (\(x), \(y))")
//    default:  Hay casos en donde el default no va a poder ser ejecutado y se puede quitar.
//        print("El punto \(somePoint) esta en algun otro lado")
}

// **************** SWITCH EN CASOS COMPUESTOS *********************
let someCharacterSwitch: Character = "e"

switch someCharacterSwitch {
    case "a", "e", "i", "o", "u":
        print("Se trata de una vocal")
    case "b", "c", "d", "f", "g": // TODO: Acabar con el resto del abecedario, solo consonantes
        print("Se trata de una consonante")
    default:
        print("Se trata de una caracter no vocal ni consonante (minuscula)")
}

let stillAnotherPoint = (0,5)
switch stillAnotherPoint {
    case (let distance, 0), (0, let distance):
        print("Se halla sobre el eje a distancia \(distance) de origen")
    default:
        print("No esta sobre el eje")
}
