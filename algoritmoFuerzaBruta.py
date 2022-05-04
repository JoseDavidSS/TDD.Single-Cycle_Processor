def iniciar (algoritmo, byteInicial):
    
    if algoritmo == 0:
        buscarLorem(byteInicial)
        
    elif algoritmo == 1:
        KMP(byteInicial)
        
    else:
        print ("Revisar los datos ingresados")

def buscarLorem (byteInicial):

    palabra = "Lorem"

    texto = "Quiero Lorem enconLoremtrar la palabra perro Lorx solo una Lorem vez"

    total = len(texto)

    flagEncuentra = 0

    #print (palabra [1:])
    #print (palabra [0])

    i = byteInicial
    
    contador = 0
    apariciones = 0
    
    while total > i:
        print (texto [i])
        
        print ("llegué2")
        if  palabra [0] == texto [i]: # Aparición de la primera letra buscada
                print ("llegué3")
                
                while 5 > contador: #R5 > contador
                        
                    if palabra [contador] == texto [i]:
                        print ("entré 1.2.1.2")
                        contador += 1
                        i += 1

                    else:
                        break

                if contador == 5:
                    print ("palabra encontrada")
                    contador = 0
                    apariciones += 1
                    print ("llegué1")

                
            

        else:
            contador = 0
            i += 1
            
    print("Apariciones: ", apariciones)

iniciar (0, 0)
    


