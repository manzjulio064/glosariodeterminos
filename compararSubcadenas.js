/**
 * Verificación de Subcadena Común en Matrices de Cadenas
 *
 * Dadas dos matrices de cadenas, esta función determina si los elementos correspondientes
 * contienen una subcadena común.
 *
 * Ejemplo:
 * a = ['ab', 'cd', 'ef']
 * b = ['af', 'ee', 'ef']
 *
 * Resultado:
 * SI, NO, SI
 */

/**
 * Función principal que verifica subcadenas comunes en dos arreglos de cadenas
 * @param {string[]} a - Primera matriz de cadenas
 * @param {string[]} b - Segunda matriz de cadenas
 */
function commonSubString(a, b) {
  // Función para verificar si dos cadenas tienen una subcadena común
  function hasCommonSubstring(str1, str2) {
      const set1 = new Set(str1); // Crear un conjunto con los caracteres de str1
      for (const char of str2) {  // Iterar a través de cada carácter de str2
          if (set1.has(char)) {   // Verificar si el carácter está en el conjunto de str1
              return true;        // Si es así, hay una subcadena común
          }
      }
      return false; // Si ningún carácter coincide, no hay subcadena común
  }

  // Iterar a través de los arreglos y verificar cada par
  for (let i = 0; i < a.length; i++) {
      if (hasCommonSubstring(a[i], b[i])) {
          console.log("SI");
      } else {
          console.log("NO");
      }
  }
}

// Ejemplo de uso:
const a = ['ab', 'cd', 'ef'];
const b = ['af', 'ee', 'ef'];

commonSubString(a, b);
