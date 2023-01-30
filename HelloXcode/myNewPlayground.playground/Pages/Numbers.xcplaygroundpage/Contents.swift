import Foundation
import UIKit

let age : UInt8 = 31

let minValue = UInt8.min  //2^0-1
let maxValue = UInt8.max  //2^8-1

let f1: Float = 3.14159265
let d1: Double = 3.14159265

let meaningOfLife = 42 // Int
let pi = 3.14159  // Double
let anotherPi = 3 + 0.14159  // Double

let decimalInteger = 17 // 1 x 10 + 7 .. Con base a 10
let binaryInteger = 0b10001 // Numero en binario = 17 -> 1*2^4+0*2^3+0*2^2+0*2^1+1*2^0
let octalInteger = 0o21 // Numero en octales = 17 -> 2*8^1+1*8^0
let hexadecimalInteger = 0x11 // Numero en headecimal = 17 -> 1*16^1+1*16^0

// Otra forma de escribir los numeros cambiando de base.
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let headecimalDouble = 0xC.3p0

// Separar las cantidades altas con _
let paddedDouble = 000123.456
let someNumber = 00000097.540  // Swift no toma en cuenta los 0 que estan previos al numero

let oneMillion = 1_000_000 // se pueden usar estos separadores cada 3 digitos.
let justMoreThanAMillion = 1_000_000.000_000_1



// ERRORES DE TIPO DE DATO

/* let cannotBeNegative: UInt8 = -1 // Con el UInt8 nos aseguramos que el numero no puede ser negativo
let tooBig: UInt8 = UInt8.max + 1 // en este ejemplo se pasa del umbral establecido */

// --- CASTING ---

//casting para subir de nivel y poder equiparar datos para poder operar
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
// sumar UInt16 + UInt8
let twoThounsandAndOne = twoThousand + UInt16(one)


let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber


// Casting para quitar informacion extra, reducir memoria, y transformar los datos segun nuestras necesidades.
let integerPi = Int(piNum)  // Hace un truncamiento: es decir, toma del punto decimal a la izquierda, y corta del decimal para la derecha.


// --- TIPO DE DATOS ---

//Crear un tipo de Alias
//(tipicamente los audios de un movil pueden venir guardados en 16bits).
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max // UInt16.max

