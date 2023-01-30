import Foundation
import UIKit


// String
let myString: String = "Hello playground"
let myString2 = "Bienvenido hackermen"
let myString3 = myString + ", " + myString2
print(myString3)

// Int
let myInt: Int = 10
let myInt2 = 20
print(myInt + myInt2)

// Double
let myDouble: Double = 10.1
let myDouble2 = 2.5
// let myDouble3 = 1 No es valido, hay que agregaarle el flotante
let myDouble3 = 1.0
print(myDouble + myDouble2 + myDouble3)

// Float - Es lo mismo que double, pero con una longitud menor
// Swift, automaticamente infiere que si ingresas un decimal, es de tipo double, por lo que para usar float hay que indicarlo al editor
let myFloat: Float = 1.5
let myFloat2: Float = 2.0
print(myFloat + myFloat2)

// Bool
let myBool: Bool = true
let myBool2 = false
print(myBool && myBool2)
print(myBool == myBool2)

// BOOLEAN CLASS
let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = true

// Sentencia de control de flujo
if isAged { // so isAged == true
    print("Puedes entrar en la fiesta")
} else {
    print("No puedes entrar en la fiesta")
}

var age = 31

if age >= 18 {
    print("Puedes entrar en la fiesta x2")
}

// TUPLAS - Juntan diferentes tipos de datos en una estructura - (Casos tipicos)
let http404Error = (404, "Pagina no encontrada")  // (Int, String) Aqui hay dos parametros, como si fuera un array en JS
let (statusCode, statusMessage) = http404Error
print("El codigo del estado es \(statusCode)")
print("El mensaje del servidor es \(statusMessage)")

let (jusStatusCode, _) = http404Error
print("El codigo del estado es \(jusStatusCode)")


print("El codigo del error es \(http404Error.0) y el mensaje es \(http404Error.1)")


// En caso de que la tupla tenga muchos parametros
let http200Status = (statusCode: 200, description: "Ok")
print("El codigo del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")


// OPTIONALS / NIL
// En swift no existen valores nulos, existe es la ausencia de valor
let possibleAge = "31"
let converterAge = Int(possibleAge) // Esto es un entero opcional Int?

let possibleAgeFail = "Paco"
let converterAgeFail = Int(possibleAgeFail)  // Nil

var serverResponseCode : Int? = 404
serverResponseCode = nil

var surveyAnswer : String?

//print(surveyAnswer)
//
//surveyAnswer = "42"
//
//print(surveyAnswer)


// FORCE UNWRAPPING DE UNA VARIABLE OPCIONAL
//print(surveyAnswer!) // ERROR: se debe comprobar que el valor no es nil para el force unwrapping

if converterAge != nil {
    print("La edad del usuario no es nula \(converterAge)") // La edad del usuario no es nula Optional(31)
// Al estar dentro de un if, y hay seguridad de que la variable existe, se puede agregar la exclamacion para forzar que el optional pase al valor completo
    print("La edad del usuario no es nula \(converterAge!)")
} else  {
    print("La edad del usuario si es nula")
}

// OPTIONAL BINDING
// si se puede crear una constante llamada actualSurveyAnswer, quiere decir que el valor no es nil
if let actualSurveyAnswer = surveyAnswer {
    // Al llegar aqui surveyAnswer no es nil
    print("El string \(surveyAnswer) tiene el valor actual \(actualSurveyAnswer)")
} else {
    // Quiere decir que el valor es nil
    print("Survey answer es nil \(surveyAnswer)")
}


// Otro ejemplo
if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("FUNCIONO")
}


// UNWRAPPING IMPLICITO - Dos casos de ejemplo
let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let assumedString: String! = "Un string unwrapped de forma implicita a partir de un opcional"
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString)
}

if let definitiveString = assumedString {
    print(definitiveString)
}

print(assumedString)
