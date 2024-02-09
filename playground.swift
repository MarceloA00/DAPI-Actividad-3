import Foundation

var running = true

while(running) {
    print("Introduzca un número para elegir el programa.\n\t1. Par o Impar\n\t2. 100 Palabra\n\t3. Tu Pubilco ESRB\n\t4. Terminar Programa")
    let option = readLine()
    
    switch option {
        case "1":
            evenOrOdd()
            bufferStop()
        case "2":
            wordCount()
            bufferStop()
        case "3":
            ageRating()
            bufferStop()
        case "4":
            running = false
        default:
            print("Intenta de Nuevo")
    }
    
}

func evenOrOdd() {
    print("Proporciona numero a analizar:")
    let num = Int(readLine()!) ?? 0
    if ((num % 2) == 0) {
        print("Es Par")
    } else {
        print("Es Impar")
    }
}

func wordCount() {
    var spaces = 1
    var charCount = 0
    print("Proporicona texto a analizar:")
    var text = (readLine()!)
    
    for char in text {
        if char == " " {
            spaces = spaces + 1;
        }
        
        if char != " " {
            charCount = charCount + 1;
        }
    }
    
    if(spaces < 100) {
        print("No cumple las 100 palabras. Texto redactado a continuacion:")
        for _ in (1...(100-spaces)) {
            text = text + " etc"
        }
        print(text)
    } else {
        print("Si cumple con las 100 palabras")
        print("Con " + String(charCount) + " caracteres en total")
    }
}

func ageRating() {
    print("Propociona edad:")
    let age = Int(readLine()!) ?? 0
    
    switch age {
        case 1,2,3,4,5,6,7,8,9:
            print("Pertenece a E para Todo Publico")
        case 10,11,12:
            print("Pertenece a E 10+ para Publico arriba de 10 años")
        case 13,14,15,16:
            print("Pertenece a T para Publico Adolecente")
        case 17:
            print("Pertenece a M para Publico Maduro")
        default:
            print("Pertenece a Publico Adulto")
    }
}

func bufferStop() {
    print("Presiona Enter para Regresar la Menu Principal")
    var buffer = readLine()!
    buffer = " "
    print(buffer)
}