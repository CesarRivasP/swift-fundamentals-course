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

// **************** CONTINUE / BREAK *********************
// **************** CONTROL  TRANSFER SENTENCES - continue, brak, fallthrough, return, throw *********************
let sentence = "Las mentes grandes piensan igual"
var filteredSentence = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u"]
for charact in sentence {
    print(charact)
    if charactersToRemove.contains(charact) {
        continue // No hacer nada, Para que rompa la ejecucion actual, y continue con la siguiente iteraccion
    }
    
    filteredSentence.append(charact)
    
    if charact == "d" {
        break // Finalizar el bucle por completo. Tambien se usa en el swtich
    }
}
filteredSentence

// **************** fallthrough es una palabra reservada (pasar hacia delante). Solo se usa en switch *********************
let integerToDescribe = 4
var description = "El numero \(integerToDescribe) es"

switch integerToDescribe {
    case 2,3,5,7,11,13,17,19:
        description += " un número primo, y"
        fallthrough // va a permitir validar el siguiente case, o en este caso, en el default
    default:
        description += " un número entero."
}
// Termina cayendo en los dos casos.
print(description)

// **************** RETURN / GUARD *********************
var people = ["name": "Cesar Rivas", "age": 27, "isMale": true] as [String : Any]
/* GUARD
Si existe el surname y lo puede crear, la variable surname va a llegar hasta donde se va a indicar
*/

func testUserValidation(person: [String: Any]){
//    guard let surname = person["surname"] else { // No existe
//        print("El nombre es desconocido")
//        return
//    }
//    // HASTA AQUI EXISTE surname si llegara a existir
//    print("El surname de la persona es \(surname)")
    
    guard let name = person["name"] else { // No existe
        return
    }
    print(name) // Como si existe, si llega hasta aqui la ejecucion.
    
    guard let age = person["age"] else { // No existe
        return
    }
    print("La edad de la persona es \(age)") // Como si existe, si llega hasta aqui la ejecucion.
}
testUserValidation(person: people)

if let surname = people["name"] {
    print(surname)
}

// **************** Available en API: Manejo de versiones *********************
if #available(iOS 12, macOS 10.12, *) {
    // Ejecutar las acciones a lo iOS 12+, a los macOS 10.12+
} else {
    // Mantener el codigo viejo con versiones anteriores de los iOS, macOS...
}
