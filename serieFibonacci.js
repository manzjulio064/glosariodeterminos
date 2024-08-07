// Definir la función para generar la serie de Fibonacci

function serie(n) {

  let array = [0, 1]; // comienza con los 2 primeros numeros de la serie

  for (let i = 2; i < n; i++) { // i = 2 Apartir del segundo comienza a iterar
    array[i] = array[i - 1] + array[i - 2]; // array[i - 1] es el término anterior y array[i - 2] es el término dos posiciones atrás. array[i] es el nuevo elemento que crea con la suma en el array
  }

  return array;

}

console.log(serie(10));