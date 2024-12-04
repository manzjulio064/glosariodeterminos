// URL del archivo que deseas descargar
const fileUrl = './springboot-keycloak-luisina.zip';

// Función para manejar la descarga
function setupDownloadButton() {
  // Obtener el botón por su ID
  const downloadButton = document.getElementById('downloadBtn');

  if (downloadButton) {
    // Agregar un evento de clic al botón
    downloadButton.addEventListener('click', function () {
      // Crear un elemento <a> dinámico
      const a = document.createElement('a');
      a.href = fileUrl; // Establecer la URL del archivo
      a.download = 'springboot-keycloak-luisina.zip'; // Establecer el nombre del archivo
      document.body.appendChild(a); // Agregar el elemento al DOM
      a.click(); // Simular un clic en el enlace
      document.body.removeChild(a); // Eliminar el elemento después del clic
    });
  } else {
    console.error('El botón con ID "downloadBtn" no se encontró en el DOM.');
  }
}

// Ejecutar la función una vez que el DOM esté completamente cargado
document.addEventListener('DOMContentLoaded', setupDownloadButton);
