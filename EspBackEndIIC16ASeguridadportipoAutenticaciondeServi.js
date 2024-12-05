// URL de los archivos que deseas descargar
const fileUrl1 = './EspBackEndIIC16Acodigo-resolucion-videoclase16.zip';

// Función para manejar la descarga
function setupDownloadButton() {
  // Obtener los botones por sus IDs
  const downloadButton1 = document.getElementById('downloadBtn1');

  // Configurar evento para el primer botón
  if (downloadButton1) {
    downloadButton1.addEventListener('click', function () {
      const a = document.createElement('a');
      a.href = fileUrl1; // Establecer la URL del archivo
      a.download = 'EspBackEndIIC16Acodigo-resolucion-videoclase16.zip'; // Nombre del archivo
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
    });
  } else {
    console.error('El botón con ID "downloadBtn1" no se encontró en el DOM.');
  }

}

// Ejecutar la función una vez que el DOM esté completamente cargado
document.addEventListener('DOMContentLoaded', setupDownloadButton);