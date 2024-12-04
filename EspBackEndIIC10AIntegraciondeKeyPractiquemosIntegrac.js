// URL de los archivos que deseas descargar
const fileUrl1 = './EspBackEndIIC10Aspringboot-keycloak-luisina.zip';
const fileUrl2 = './EspBackEndIIC10AResolucion_apigatewayservice.zip';


// Función para manejar la descarga
function setupDownloadButton() {
  // Obtener los botones por sus IDs
  const downloadButton1 = document.getElementById('downloadBtn1');
  const downloadButton2 = document.getElementById('downloadBtn2');

  // Configurar evento para el primer botón
  if (downloadButton1) {
    downloadButton1.addEventListener('click', function () {
      const a = document.createElement('a');
      a.href = fileUrl1; // Establecer la URL del archivo
      a.download = 'EspBackEndIIC10Aspringboot-keycloak-luisina.zip'; // Nombre del archivo
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
    });
  } else {
    console.error('El botón con ID "downloadBtn1" no se encontró en el DOM.');
  }

  if (downloadButton2) {
    downloadButton2.addEventListener('click', function () {
      const a = document.createElement('a');
      a.href = fileUrl2; // Establecer la URL del archivo
      a.download = 'EspBackEndIIC10AResolucion_apigatewayservice.zip'; // Nombre del archivo
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
    });
  } else {
    console.error('El botón con ID "downloadBtn2" no se encontró en el DOM.');
  }


}

// Ejecutar la función una vez que el DOM esté completamente cargado
document.addEventListener('DOMContentLoaded', setupDownloadButton);
