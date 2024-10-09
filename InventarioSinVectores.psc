Algoritmo InventarioNoVectoresV1
	
    
    Definir opcionn Como Cadena
    Definir objeto1, objeto2, objeto3, objeto4, objeto5 Como Cadena
    Definir precio1, precio2, precio3, precio4, precio5 Como Real
    Definir cantidad1, cantidad2, cantidad3, cantidad4, cantidad5 Como Entero
    Definir totalObjetos Como Entero
    Definir indice Como Entero
	
   
    totalObjetos <- 0 
    opcionn <- ""
	
    
    Mientras opcion <> "c" Hacer
        Escribir "==============================="
        Escribir "          INVENTARIO"
        Escribir "==============================="
		
       
        Escribir "a) Agregar un objeto"
        Escribir "b) Eliminar un objeto"
        Escribir "d) Mostrar todos los objetos"
        Escribir "c) Salir"
        Escribir "Selecciona una opción: "
        Leer opcion
		
        Segun opcion Hacer
            Caso "a":
                
                Si totalObjetos < 5 Entonces
                    totalObjetos <- totalObjetos + 1 
					
                    Escribir "Ingresa el nombre del objeto a agregar:"
                    Si totalObjetos = 1 Entonces
                        Leer objeto1
                    Sino
                        Si totalObjetos = 2 Entonces
                            Leer objeto2
                        Sino
                            Si totalObjetos = 3 Entonces
                                Leer objeto3
                            Sino
                                Si totalObjetos = 4 Entonces
                                    Leer objeto4
                                Sino
                                    Leer objeto5
                                FinSi
                            FinSi
                        FinSi
                    FinSi
					
                    Escribir "Ingresa el precio del objeto:"
                    Si totalObjetos = 1 Entonces
                        Leer precio1
                    Sino
                        Si totalObjetos = 2 Entonces
                            Leer precio2
                        Sino
                            Si totalObjetos = 3 Entonces
                                Leer precio3
                            Sino
                                Si totalObjetos = 4 Entonces
                                    Leer precio4
                                Sino
                                    Leer precio5
                                FinSi
                            FinSi
                        FinSi
                    FinSi
					
                    Escribir "Ingresa la cantidad del objeto:"
                    Si totalObjetos = 1 Entonces
                        Leer cantidad1
                    Sino
                        Si totalObjetos = 2 Entonces
                            Leer cantidad2
                        Sino
                            Si totalObjetos = 3 Entonces
                                Leer cantidad3
                            Sino
                                Si totalObjetos = 4 Entonces
                                    Leer cantidad4
                                Sino
                                    Leer cantidad5
                                FinSi
                            FinSi
                        FinSi
                    FinSi
					
                    Escribir "Objeto agregado exitosamente:"
                    Escribir "Nombre: ", objeto1, objeto2, objeto3, objeto4, objeto5
                    Escribir "Precio: ", precio1, precio2, precio3, precio4, precio5
                    Escribir "Cantidad: ", cantidad1, cantidad2, cantidad3, cantidad4, cantidad5
                Sino
                    Escribir "El inventario está lleno. No se pueden agregar más objetos."
                FinSi
				
            Caso "b":
                
                Si totalObjetos > 0 Entonces
                    Escribir "Ingresa el número del objeto a eliminar (1 a ", totalObjetos, "):"
                    Leer indice
                    Si indice >= 1 Y indice <= totalObjetos Entonces
                        Escribir "Objeto eliminado:"
                        Si indice = 1 Entonces
                            Escribir "Nombre: ", objeto1
                            Escribir "Precio: ", precio1
                            Escribir "Cantidad: ", cantidad1
                            objeto1 <- ""
                            precio1 <- 0
                            cantidad1 <- 0
                        Sino
                            Si indice = 2 Entonces
                                Escribir "Nombre: ", objeto2
                                Escribir "Precio: ", precio2
                                Escribir "Cantidad: ", cantidad2
                                objeto2 <- ""
                                precio2 <- 0
                                cantidad2 <- 0
                            Sino
                                Si indice = 3 Entonces
                                    Escribir "Nombre: ", objeto3
                                    Escribir "Precio: ", precio3
                                    Escribir "Cantidad: ", cantidad3
                                    objeto3 <- ""
                                    precio3 <- 0
                                    cantidad3 <- 0
                                Sino
                                    Si indice = 4 Entonces
                                        Escribir "Nombre: ", objeto4
                                        Escribir "Precio: ", precio4
                                        Escribir "Cantidad: ", cantidad4
                                        objeto4 <- ""
                                        precio4 <- 0
                                        cantidad4 <- 0
                                    Sino
                                        Escribir "Nombre: ", objeto5
                                        Escribir "Precio: ", precio5
                                        Escribir "Cantidad: ", cantidad5
                                        objeto5 <- ""
                                        precio5 <- 0
                                        cantidad5 <- 0
                                    FinSi
                                FinSi
                            FinSi
                        FinSi
						
                        
                        totalObjetos <- totalObjetos - 1
                        Escribir "Objeto eliminado correctamente."
                    Sino
                        Escribir "Número inválido. No existe un objeto con ese número."
                    FinSi
                Sino
                    Escribir "El inventario está vacío. No hay objetos para eliminar."
                FinSi
				
            Caso "d":
                
                Si totalObjetos = 0 Entonces
                    Escribir "El inventario está vacío."
                Sino
                    Escribir "Lista de Objetos en el Inventario:"
                    Si objeto1 <> "" Entonces
                        Escribir "1 | ", objeto1, " | ", precio1, " | ", cantidad1
                    FinSi
                    Si objeto2 <> "" Entonces
                        Escribir "2 | ", objeto2, " | ", precio2, " | ", cantidad2
                    FinSi
                    Si objeto3 <> "" Entonces
                        Escribir "3 | ", objeto3, " | ", precio3, " | ", cantidad3
                    FinSi
                    Si objeto4 <> "" Entonces
                        Escribir "4 | ", objeto4, " | ", precio4, " | ", cantidad4
                    FinSi
                    Si objeto5 <> "" Entonces
                        Escribir "5 | ", objeto5, " | ", precio5, " | ", cantidad5
                    FinSi
                FinSi
				
            Caso "c":
                
                Escribir "Saliendo del programa. ¡Hasta luego!"
				
            De Otro Modo:
                
                Escribir "Opción no válida. Por favor, selecciona una opción correcta (a, b, c, d)."
				
        FinSegun
		
    FinMientras
FinAlgoritmo


