// matriz basica

function sumaMatrizBidimensional() {

  let matriz = [];

  for (let i = 0; i < 3; i++) {
    matriz[i] = []; // inicializar la matriz con 3 filas vacias

    for (let j = 0; j < 4; j++) {
      let datos = prompt(`ingrese los datos para la fila ${i+1} columna ${j+1}`)
      matriz[i][j] = parseInt(datos);
    }

  }
  console.log(matriz);
}

// Ejecutar el algoritmo
sumaMatrizBidimensional();