import UIKit

// SINTAXIS COLECCIONES
var arrayNumbers = [1,2,3]

let arrayNumbersInmutable = [3,2,1]

print(arrayNumbers[1])
print(arrayNumbersInmutable[0])

// AGREGAR VALORES
// Agregar valores al final de un array
arrayNumbers.append(5)
// Agregar un elemento en la posicion del array indicada
arrayNumbers.insert(4, at: 0)


// REMOVER VALORES
// Remover el ultimo
arrayNumbers.removeLast()
print(arrayNumbers)
// Remover una posicion especifica
arrayNumbers.remove(at: 1)
print(arrayNumbers)
// Remover todos los elementos
arrayNumbers.removeAll()
print(arrayNumbers)


var emptyArray : [Int] = []
print(emptyArray)
