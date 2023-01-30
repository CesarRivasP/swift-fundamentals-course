import UIKit

func canThrowError() throws{
    
}

do {
    try canThrowError()
    // Si llegamos aqui no ha habido un error...
} catch {
    // Si llegamos aqui si hubo un error...
}

func makeASandwich() throws{
    
}

do {
    try makeASandwich()
    // Me como el sandwich
} catch {
    // hay que revisar por que no se pudo
}


//Aserciones (debug) y Precondiciones (validas en prod tambien)
let age = -5

//assert(age >= 0, "La edad de una persona no puede ser negativa")

// precondition(age >= 0, "La edad de una persona no puede ser negativa") // tambien se chequea en la fase de prod

// ... aqui el codigo sigue
if age > 10 {
    print("puedes subir a la montaña rusa")
} else if age >= 0 {
    print("Eres demasiado pequeño para subir a la montaña rusa")
} else {
    assertionFailure("La edad de una persona no puede ser negativa")  // se ejecuta en fase de desarrollo
}
