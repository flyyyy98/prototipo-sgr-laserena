# 🏛️ SGR La Serena • Sistema de Gestión y Resultados Territoriales
**Ilustre Municipalidad de La Serena • Coordinación Territorial**

Plataforma oficial para la gestión operativa comunal de las 6 delegaciones territoriales, control del Tubo de Trabajo y medición del Semáforo de Rendimiento Trimestral.

---

## 🌐 Enlace Oficial en Vivo (GitHub Pages & Mobile Web)
* **URL Pública:** [https://flyyyy98.github.io/prototipo-sgr-laserena/](https://flyyyy98.github.io/prototipo-sgr-laserena/)
* **Repositorio:** [https://github.com/flyyyy98/prototipo-sgr-laserena](https://github.com/flyyyy98/prototipo-sgr-laserena)

---

## 📱 1. Adaptación Móvil (Teléfono en Web & PWA)
El prototipo está **100% optimizado para teléfonos móviles**:
* **Barra de Navegación Inferior Móvil (Bottom Navigation Bar):** Accesos táctiles ergonómicos para el pulgar:
  * 👷 **Terreno:** Cuadrilla operativa y Semáforo con Simulador Adaptativo.
  * 📋 **Tubo:** Agenda colectiva en 4 estados (*Ingresado*, *Pendiente*, *En Proceso*, *Realizado*).
  * 🔍 **Auditoría:** Mesa de Dictamen y fiscalización Check = 1 con fotos 'Antes' vs 'Después'.
  * 🏛️ **Alcaldía:** Mando Estratégico y comparativa de las 6 delegaciones.
* **Tablero Kanban Deslizable (Swipe Carousel):** En móviles, las 4 columnas del Tubo de Trabajo se deslizan horizontalmente con *scroll-snap* táctil.
* **Modales Bottom-Sheet:** Los formularios se abren como bandejas inferiores desplegables, accesibles sin importar el tamaño de pantalla.
* **PWA (Progressive Web App):** Al abrir la URL en Chrome/Safari móvil, puedes presionar *"Instalar aplicación"* o *"Agregar a pantalla principal"* para usarla como app nativa a pantalla completa.

---

## 🤖 2. Aplicación Funcional de Android (APK Nativo)
Como experimento complementario, se construyó la **aplicación Android oficial empaquetada**:
* **Ubicación del Instalador:** [`android/sgr-laserena-debug.apk`](android/sgr-laserena-debug.apk) (12 MB).
* **Modo Terreno Autónomo (100% Offline):** Incluye los activos web precompilados de forma local, permitiendo operar en zonas rurales sin señal ni internet.
* **Modo Nube Integrado:** Permite alternar en un clic con la versión web oficial en tiempo real.
* **Instalación Directa:**
  * **Opción A (Por USB / ADB):** Conecte su teléfono con depuración USB y ejecute `android/instalar_app.bat`.
  * **Opción B (Descarga Directa):** Transfiera `sgr-laserena-debug.apk` a su teléfono Android (por WhatsApp, Drive o USB) y presione *"Instalar"*.
* **Código Fuente Android:** El proyecto nativo de Android Studio está ubicado en `sgr_android_app` listo para abrir y compilar.

---

## 📌 3. Arquitectura y Módulos
* **Frontend:** Next.js 16 (React 19, Tailwind CSS v4, Lucide Icons).
* **Backend:** Django REST Framework (Python 3.12, SQLite / PostgreSQL, Celery, JWT Auth).
* **Prototipo Autónomo:** Archivo `index.html` sin dependencias externas obligatorias.
* **Impresión Limpia:** Modo `@media print` para exportar fichas operativas en PDF con membrete oficial limpio.
