Proceso InventarioConVectores
	
    // Declaraci�n de arreglos/Vectores para almacenar nombre, precio y cantidad de los objetos
    Dimension nombres[100]      // Arreglo para nombres de objetos
    Dimension precios[100]      // Arreglo para precios de objetos
    Dimension cantidades[100]    // Arreglo para cantidades de objetos
	
  
    Definir opcion, objeto Como Cadena
    Definir precio Como Real
    Definir cantidad, totalObjetos, indice, i Como Entero
	
   
    totalObjetos <- 0          
    opcionm <- ""               
	
    
    Mientras opcion <> "c" Hacer
      a
		
        Escribir "==============================="
        Escribir "          INVENTARIO"
        Escribir "==============================="
		
       
        Escribir "a) Agregar un objeto"
        Escribir "b) Eliminar un objeto"
        Escribir "d) Mostrar todos los objetos" 
        Escribir "c) Salir"
        Escribir "Selecciona una opci�n: "
        Leer opcion
		
        Segun opcion Hacer
            Caso "a":
                
                Si totalObjetos < 100 Entonces
                    Escribir "Ingresa el nombre del objeto a agregar:"
                    Leer objeto
					
                    Escribir "Ingresa el precio del objeto:"
                    Leer precio
                    Mientras precio < 0 Hacer
                        Escribir "El precio no puede ser negativo. Ingresa nuevamente el precio:"
                        Leer precio
                    FinMientras
					
                    Escribir "Ingresa la cantidad del objeto:"
                    Leer cantidad
                    Mientras cantidad < 0 Hacer
                        Escribir "La cantidad no puede ser negativa. Ingresa nuevamente la cantidad:"
                        Leer cantidad
                    FinMientras
					
                    totalObjetos <- totalObjetos + 1
                    nombres[totalObjetos] <- objeto
                    precios[totalObjetos] <- precio
                    cantidades[totalObjetos] <- cantidad
                    Escribir "Objeto agregado exitosamente:"
                    Escribir "Nombre: ", objeto
                    Escribir "Precio: ", (precios[totalObjetos])
                    Escribir "Cantidad: ", cantidad
                Sino
                    Escribir "El inventario est� lleno. No se pueden agregar m�s objetos."
                FinSi
				
            Caso "b":
                
                Si totalObjetos > 0 Entonces
                    Escribir "Ingresa el n�mero del objeto a eliminar (1 a ", totalObjetos, "):"
                    Leer indice
                    Si indice >= 1 Y indice <= totalObjetos Entonces
                        Escribir "Objeto eliminado:"
                        Escribir "Nombre: ", nombres[indice]
                        Escribir "Precio: ",(precios[indice])
                        Escribir "Cantidad: ", cantidades[indice]
                        
                        
                        Para i <- indice Hasta totalObjetos - 1 Con Paso 1 Hacer
                            nombres[i] <- nombres[i + 1]
                            precios[i] <- precios[i + 1]
                            cantidades[i] <- cantidades[i + 1]
                        FinPara
                        totalObjetos <- totalObjetos - 1
                        Escribir "Objeto eliminado correctamente."
                    Sino
                        Escribir "N�mero inv�lido. No existe un objeto con ese n�mero."
                    FinSi
                Sino
                    Escribir "El inventario est� vac�o. No hay objetos para eliminar."
                FinSi
				
            Caso "d":
                
                Si totalObjetos = 0 Entonces
                    Escribir "El inventario est� vac�o."
                Sino
                    Escribir "Lista de Objetos en el Inventario:"
                    Escribir "-------------------------------------------------"
                    Escribir "N� | Nombre del Objeto | Precio   | Cantidad"
                    Escribir "-------------------------------------------------"
                    Para i <- 1 Hasta totalObjetos Con Paso 1 Hacer
                        Escribir i, " | ", nombres[i], " | ", (precios[i]), " | ", cantidades[i]
                    FinPara
                    Escribir "-------------------------------------------------"
                FinSi
				
            Caso "c":
                
                Escribir "Saliendo del programa. �Hasta luego!"
				
            De Otro Modo:
                
                Escribir "Opci�n no v�lida. Por favor, selecciona una opci�n correcta (a, b, c, d)."
				
        FinSegun

    FinMientras

FinAlgoritmo
