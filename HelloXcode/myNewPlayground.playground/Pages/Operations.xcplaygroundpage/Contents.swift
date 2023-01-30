import UIKit

/* --- TIPOS DE OPERADORES ---
 UNARIOS
 BINARIOS
 TERNARIOS
*/


//Asignacion: para dar valor a una variable
let b = 10
var a = 5

a = b
print(a)

// Una tupla
let (x,y) = (1,2)

/* Los iguales:
= Es para asignar
== Es para comparar
*/

if a == b {
    print("Los valores de a y b son iguales")
}

// Operaciones basicas en numeros que se pueden realizar
1+2
5-3
2*3
10.0/2.5

"Hello " + "World"

// D/d -> D == d*c+r  ---> Algoritmo (forma de euclides)
9/4  // Cociente
9%4  // Resto

// Comparacion verdadera
9 == 4*2+1

// Al usar numeros negativos cambian los resultados esperados
-9%4 // -9 == -2*4 + (-1)


// El operador unario transforma positivos a negativos y viceversa
let five = 5
let minusFive = -five
let plusFive = -minusFive

// Otro operador unario
let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3  //number = number + 3
number -= 2  //number = number - 2
number *= 2  //number = number * 2
number %= 2  //number = number % 2
number += 12  //number = number % 2
number /= 2  //number = number % 2


// COMPARACIONES: Existen 6 comparaciones basicas
// Igualdad
1 == 1
1 == 2
// Desigualdad
1 != 2
// Mayor, menor, e igualdad en mayor y menor. (HAY QUE DEJAR LOS ESPACIOS EN BLANCO EN ESTAS COMPARACIONES ENTRE LOS OPERADORES)
2 > 1
2 < 1
2 >= 1
2 <= 1

let name = "Cesar Rivas"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres un invitado a la fiesta")
} else {
    print("Cuidado, \(name), es un salvaje")
}

// Comparaciion en tuplas
(1, "Juan Gabriel") < (2, "Ricardo Celis") // 1 es menor que dos, por eso su valor es true

/* Esto para casos en donde los valores son iguales */
// A pesar que el 3 sea igual al 3 y no menor, La J de Juan viene antes en el alfabeto que la R de Ricardo
(3, "Juan Gabriel") < (3, "Ricardo Celis")
// Aqui la C si viene antes que la J de Juan
(3, "Juan Gabriel") < (3, "Cesar Rivas")

// Otro caso
(4, "perro") == (4, "perro")

// El operador binario < o > no se le pueden aplicar comparaciones booleanas
//(false, "perro") < (false, "perro")


// ********* Operador Ternario. Es el unico operador que opera sobre 3 elementos *************
/*
if question {
    answer1
} else {
    answer2
}
*/
let contentHeigth = 40
var hasImage = true
var rowHeight = 0

// Tipica estructura
/*
 if hasImage {
    rowHeight = contentHeigth + 50
} else {
    rowHeight = contentHeigth + 10
}
*/

// Nueva estructura con Ternarios
rowHeight = contentHeigth + (hasImage ? 50 : 10)



// ********** Operador Nil Coalescing **************
let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

userAge = 31
ageToBeUsed = userAge ?? defaultAge

let defaultColorName = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColorName

userColorName = "green"

colorNameToUse = userColorName ?? defaultColorName


// ******** BUCLES *********
// *********** OPERADOR RANGO ***********
// RANGO CERRADO. Se toma el primer valor, y todos los que van hasta llegar al ultimo. Osea, 5 veces
for idx in 1...5 {
    print(idx)
}
// RANGO SEMI ABIERTO. Incluye el valor de inicio, pero no del final
// ASI INDICAMOS QUE NO SE DEBE LLEGAR AL ULTIMO VALOR
for idx in 1..<5 {
    print(idx)
}

// Este es el que se suele utilizar a la hora de trabajar con Arrays
for idx in 1..<5 {
    print(idx)
}

let names = ["Andres", "Pedro", "Maria", "Cesar"]
for i in 0..<names.count {
    print("La persona \(i + 1) se llama \(names[i])")
}

// Para que acceda del 1 en adelante
for name in names[1...] {
    print("Empieza en 1 \(name)")
}

// Para que empiece en 0 y termine en el segundo elemento
for name in names[...2] {
    print("Empieza en 0 \(name)")
}

// Crear un rango como variable
let range = ...5 // - infinity to 5
range.contains(7)
range.contains(4)
range.contains(-2)


// ************ OPERADORES LOGICOS ***************
// AND OR NOT
let allowEntry = false

// NOT
if !allowEntry {
    print("NO PERMITO LA ENTRADA")
}

let enterDoorCode = true
let passRetinaScan = false

// AND
if enterDoorCode && passRetinaScan {
    print("BIENVENIDO A LA EMPRESA")
} else {
    print("ACCESO DENEGADO")
}

// OR
let hasMoney = true
let hasInvitation = false


if hasMoney || hasInvitation {
    print("BIENVENIDO A LA FIESTA")
} else {
    print("NO PUDISTE INGRESAR A LA EMPRESA")
}


if (enterDoorCode && passRetinaScan) || (hasMoney || hasInvitation)  {
    print("BIENVENIDO A LA FIESTA NUEVAMENTE")
} else {
    print("NO PUDISTE INGRESAR A LA EMPRESA NUEVAMENTE")
}
