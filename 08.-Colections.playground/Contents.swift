import UIKit

// Las colecciones permiten tener mas de un valor en una variable.
// Cualquier coleccion puede ser mutable o inmutable.
// LAS COLECCIONES SE DIVIDEN EN TRES GRUPOS:

// ************** ARRAY **************
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count

// Asi tambien se puede vaciar o inicializar un Array.
someInts = []
someInts.count
// ---- Otra forma de inicializar
var someDoubles = Array(repeating: 3.141592, count: 7)
someDoubles.count
// ---- Otra forma de inicializar
var moreDoubles = Array(repeating: 2.5, count: 4)
moreDoubles.count

var alotOfDoubles = someDoubles + moreDoubles
alotOfDoubles.count

var shoppingList: [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

// ** Acceder a elementos de un Array.
if shoppingList.isEmpty {
    print("La lista de la compra esta vacia")
} else {
    print("Si no esta vacia, mandemos a Ricardo a comprar")
}

shoppingList.append("Cocacola") // Con append se conserva el orden que tenia la lista.
shoppingList.count

// Asi tambien se pueden agregar elementos a un Array.
shoppingList += ["Totopos", "Guacamoles", "Pico de gallo"];
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos" // Sobreescribir una propiedad del array
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]
shoppingList

// Aqui se remueve de shoppingList el primer elemento, y se retorna el elemento que fue removido
let pepper = shoppingList.remove(at: 1)
shoppingList

// Para remover el ultimo
let _ = shoppingList.removeLast()
shoppingList

// ** Iterar un Array.
for item in shoppingList {
    print(item)
}

// Al hacer un tupla en un bucle como este, siempre retornara el indice de posicion en el primer lugar, y en el segundo, el item.
for (idx, item) in shoppingList.enumerated() {
    print("Item: \(idx+1): \(item)")
}

// CONJUNTOS (Set)
// Un conjunto es la forma mas basica de almacenar objectos sin un orden en particular.
var letters = Set<Character>(); // los Character son comparables.
letters.count
// Al insertar en una coleccion, no hay orden.
letters.insert("a")
letters
letters.count
letters.insert("h")
letters

var favouriteGames: Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
favouriteGames.count
favouriteGames.isEmpty

favouriteGames.insert("Call of Duty")

if let removedGame = favouriteGames.remove("Farcry") {
    print("Fue removido \(removedGame)")
}

if favouriteGames.contains("Final Fantasy") {
    print("Me encanta ese juego")
}

// Para ordernar los strings de forma creciente
for videoGame in favouriteGames.sorted() {
    print(videoGame)
}

// ******** Operaciones de Conjuntos
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeDigits: Set = [2,3,5,7]

// A union B = elementos que son o bien de A o bien de B o de las dos.
oddDigits.union(evenDigits).sorted()
// A interception B = los elementos que son a la vez de A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeDigits).sorted()
oddDigits.intersection(primeDigits).sorted()

// Diferencia de Conjuntos: A - B = elementos que de A pero no de B
oddDigits.subtracting(primeDigits).sorted() // => todos los numeros impares que no son primos

// Diferencia simetrica A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeDigits).sorted() // => numeros pares que no primos, y los primos que no son pares

let houseAnimals: Set = ["🐶", "😸"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "😸"]
let cityAnimals: Set = ["🐭", "🕊"]

houseAnimals.isSubset(of: farmAnimals) // Es true porque en farmAnimals hay gatos y perros.
farmAnimals.isSuperset(of: houseAnimals) // farmAnimals es un super conjunto que contiene los houseAnimals
// A y B son disjuntos si su interseccion es vacia
farmAnimals.isDisjoint(with: cityAnimals) // Es verdad porque no tienen elementos en comun

// DICCIONARIOS (ES UN OBJETOOOOOOO) [k1: v1, k2: v2, .....]
// Este tipo de estructuras no tiene orden.
var namesOfIntegers = [Int: String]()
namesOfIntegers[15] = "Quince" // => [15: "Quince"]
namesOfIntegers = [:] // => Para vaciar el diccionario.

var airports: [String: String] = ["YYZ": "Toronto", "DUB": "Dublin", "PMI": "Palma de Mallorca"]
airports.count
airports.isEmpty

airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports

// Actualizar el value de una key.
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("El aeropuerto tenia antiguamente el nombre \(oldValue)")
}
airports

if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}
airports

// Anular objetos
airports["PMI"] = nil
airports

if let removedAirport = airports.removeValue(forKey: "DUB"){
    print("El aeropuerto de DUB es: \(removedAirport)")
}
airports

// ********** Iteracion de diccionarios
// Bucles
for (key, value) in airports {
    print("\(key) - \(value)")
}

for airportKey in airports.keys {
    print(airportKey)
}

for airportName in airports.values {
    print(airportName)
}

// Casting a string
let airportKeys = [String](airports.keys)
let airportNames = [String](airports.values.sorted())
