import UIKit

// Es una estructura que puede guardar varios tipos de datos.
// Son clases que estan restringidas en lo que pueden hacer.
enum SomeEnumeration {
    // Aqui iria la definicion del enumerado
}

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east
directionToGo = .west

switch directionToGo {
    case .north:
        print("Hay que ir al norte")
    case .south:
        print("Hay que ir al sur")
    case .east:
        print("Hay que ir al este")
    case .west:
        print("Hay que ir al oeste")
}

let somePlanet = Planet.earth
switch somePlanet {
    case .earth:
        print("La tierra es segura")
    default:
        print("No es seguro ir a este planeta")
}

enum Beverage: CaseIterable {
    case coffe, tea, juice, redbull
}

let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases {
    print(beverage)
}

enum Barcode {
    case upc(Int, Int, Int, Int) // codigos de 4 digitos
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 512226, 3)
//productBarcode = .qrCode("ASBASHASJGHASGAJ")

switch productBarcode {
    case let .upc(numberSystem, manuFacturer, product, check):
        print("UPC: \(numberSystem), \(manuFacturer), \(product), \(check).")
    case let .qrCode(productCode ):
        print("QR: \(productCode).")
}


// ************ Enumerados con raw values ****************
// Increment case enum
enum PlanetEnum: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFedd = "\n"
    case carriageReturn = "\r"
}

let earthOrder = PlanetEnum.earth.rawValue
// Si no se asigna el raw value, no se puede accerder
let northDirection = CompassPoint.north.rawValue

// Si se va a acceder de esta manera, esta variable tiene que ser un opcional del enumerado
let possiblePlanet = PlanetEnum(rawValue: 5)
let planetPosition = 2
if let anyPlanet = PlanetEnum(rawValue: planetPosition) {
    switch anyPlanet {
        case .earth:
            print("La tierra es segura")
        default:
            print("No es seguro ir a este planeta")
    }
} else {
    print("El planeta indicado no existe")
}
