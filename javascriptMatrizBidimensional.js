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

//**********************************Matriz con 3 filas y 4 columnas************************

function sumaMatrizBidimensional() {
  let matriz = []; // Crear la matriz

  for (let i = 0; i < 3; i++) {
    matriz[i] = []; // inicializar la matriz con las 3 filas vacias
    for (let j = 0; j < 4; j++) {
      let datos = prompt(`Ingrese los datos para la fila ${i+1} columna ${j+1}`);
      matriz[i][j] = parseInt(datos); // Agregar los datos obtenidos en la matriz
    }
  }

  // Recorrer la matriz y sumar las filas
  for (let i = 0; i < 3; i++) {
    let sumaFila = 0;
    for (let j = 0; j < 4; j++) {
      sumaFila = sumaFila + matriz[i][j];
    }
    console.log(`la suma de la fila ${i+1} :`, sumaFila);
  }

  // Recorrer la matriz y sumar las Columnas
  for (let j = 0; j < 4; j++) {
    let sumaColumna = 0;
    for (let i = 0; i < 3; i++) {
      sumaColumna = sumaColumna + matriz[i][j];
    }
    console.log(`la suma de la columna ${j+1} :`, sumaColumna);
  }
  console.log(matriz);
}

// Ejecutar el algoritmo
sumaMatrizBidimensional();

//************************************************************************************
