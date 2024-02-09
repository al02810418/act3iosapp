import UIKit

// 1. Programa que evalúe e imprima si un número es par o impar.
func evaluarParOImpar(_ numero: Int) {
    if numero % 2 == 0 {
        print("\(numero) es un número par.")
    } else {
        print("\(numero) es un número impar.")
    }
}

evaluarParOImpar(4)
evaluarParOImpar(7)

// 2. Programa que detecte si la cantidad de palabras de un texto es más de 100 palabras
// y si sí, que haga una evaluación de cuántas letras tiene sin contar espacios;
// si no tiene más de 100 palabras, rellena el texto con algún carácter y lo imprime.

func evaluarTexto(_ texto: String) {
    let palabras = texto.components(separatedBy: .whitespacesAndNewlines)
    if palabras.count > 100 {
        let letras = texto.filter { !$0.isWhitespace }.count
        print("El texto tiene más de 100 palabras.")
        print("Tiene \(letras) letras sin contar espacios.")
    } else {
        let textoRelleno = String(repeating: "*", count: 100)
        print("El texto tiene menos de 100 palabras.")
        print("Texto rellenado: \(textoRelleno)")
    }
}

let texto1 = "Este es un texto con más de cien palabras, por lo tanto, debería ser evaluado."
let texto2 = "Este es un texto con menos de cien palabras."

evaluarTexto(texto1)
evaluarTexto(texto2)

// 3. Con el uso de switch, un programa que indique en qué clasificación de público se encuentra una persona dependiendo de la edad introducida.
enum ClasificacionPublico {
    case infante
    case niños
    case mayores
    case adultos
    
    init(edad: Int) {
        switch edad {
        case 0..<6:
            self = .infante
        case 6..<13:
            self = .niños
        case 13..<18:
            self = .mayores
        default:
            self = .adultos
        }
    }
}

func clasificarEdad(_ edad: Int) {
    let clasificacion = ClasificacionPublico(edad: edad)
    switch clasificacion {
    case .infante:
        print("Clasificación: Infante")
    case .niños:
        print("Clasificación: Niños")
    case .mayores:
        print("Clasificación: Mayores")
    case .adultos:
        print("Clasificación: Adultos")
    }
}

clasificarEdad(5) // Prueba con una edad de infante
clasificarEdad(10) // Prueba con una edad de niños
clasificarEdad(16) // Prueba con una edad de mayores
clasificarEdad(25) // Prueba con una edad de adultos
