# //** Las Funciones se Crean con def

def conversacion(mensaje):
    print("Hola: ")
    print("Como estas: ")
    print(mensaje)
    print("adios")

opcion = int(input("Elige una Opción: (1, 2, 3): "))
if opcion == 1:
    conversacion("Elegiste la opción 1: " ) # Utilizando la función
elif opcion == 2:
    conversacion("Elegiste la opción 2: ") # Utilizando la función
elif opcion == 3:
    conversacion("Elegiste la opción 3: ") # Utilizando la función
else:
    print("opcion no validad")

