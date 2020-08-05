import UIKit

func canThrowError() throws{
    //Aqui hay codigo que puede causar el error
}

do{
    try canThrowError()
    //si llegamos aqui, no hay error
}catch{
    //si se llega aqui hay un error
}


func makeASandwitch() throws{
    
}

do{
    try makeASandwitch()
    //Me como el sandwitch
}catch {
    //tengo platos limpios -> lavar platos
    //tengo ingredientes -> ir a comprar
    //tengo hambre -> esperar un tiempo
}


func cleanPlate() throws{
    
}

do{
    try cleanPlate()
    //Procede a la accion hacer el sandwich
}
catch {
    //comprar platos
}

//Aserciones (debug) y Precondiciones (build)

let age = 19

//.... aquí el codigo sigue
if age > 10 {
    print("puedes subir a la montaña rusa")
}
else if age >= 0{
    print("Eres demasiado pequeño")
}
else {
    assertionFailure("La edad de una perosna no es negativa")
}


