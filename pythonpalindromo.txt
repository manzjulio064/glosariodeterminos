def palindromo(palabra):
    palabra = palabra.replace(' ', '')
    palabra = palabra.lower()
    palabra_invertida = palabra[::-1]
    if palabra == palabra_invertida:
        return True
    else:
        return False


def main():
    palabra = input("Escriba la palabra: ")
    es_palidromo = palindromo(palabra)
    if es_palidromo == True:
        print("Es un palindromo")
    else:
        print("No es un palindromo")


if __name__ == "__main__":
    main()