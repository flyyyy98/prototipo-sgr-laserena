# 🚀 PLATAFORMA Y PROTOTIPO TERRITORIAL SGR - LA SERENA
## Sistema de Gestión y Seguimiento de Resultados • Convenio INACAP 2026
**Docente Evaluador:** Jorge Luis Alejandro Cortés Gallardo  
**Asignatura:** Proyecto Integrador de Software  
**Institución:** Ilustre Municipalidad de La Serena • 6 Delegaciones Territoriales  

> 🌐 **DEMO EN VIVO (GitHub Pages):** [https://flyyyy98.github.io/prototipo-sgr-laserena/](https://flyyyy98.github.io/prototipo-sgr-laserena/)  
> 🔗 **Repositorio Oficial:** [https://github.com/flyyyy98/prototipo-sgr-laserena](https://github.com/flyyyy98/prototipo-sgr-laserena)

---

## 📌 1. Arquitectura Oficial de la Plataforma

A diferencia de un template estático genérico, esta maqueta corresponde fielmente a la **plataforma web oficial** desarrollada para el municipio:

* **Frontend:** Next.js 16 (React 19, Tailwind CSS v4, Lucide Icons, Turbopack) ubicado en `projecto/la-serena-app/`.
* **Backend:** Django REST Framework (Python 3.12, SQLite / PostgreSQL, Celery, JWT Auth) ubicado en `projecto/backend/`.
* **Diseño Institucional:** Paleta corporativa de la Ilustre Municipalidad de La Serena (carmesí `#850000`, degradados oscuros GovTech, dorado heráldico y tipografía Inter).
* **Prototipo Autónomo:** Archivo `index.html` en este directorio, el cual funciona como réplica exacta interactiva 100% fiel al entorno Next.js para evaluación sin dependencias locales.

---

## 🖥️ 2. Módulos y Paneles Operacionales

### 1. Panel Terreno (Cuadrilla Operativa)
* **Tarjeta de Identidad de Cuadrilla:** Despliega el nombre del funcionario en terreno (ej: Rodrigo Morales), RUT, delegación territorial (ej: La Pampa), área operativa (DISERCO), metas trimestrales fijadas, bonos por felicitaciones (+10%) y penalizaciones por reclamos formales (-20%).
* **Semáforo de Cumplimiento Trimestral Proporcional:**
  * Algoritmo proporcional a 65 días hábiles (RN-007).
  * Barra de progreso multi-stop con gradiente continuo: `0% Inicio`, `60% Mínimo`, `100% Meta Oficial` y `150% Tope Máx`.
  * Pin interactivo indicador de avance real y cálculo de meta proporcional esperada hoy (66.7 tickets).
  * Tarjetas de métricas: Tareas Validadas, Días Hábiles transcurridos, Bonos Vecinales y Penalizaciones.
* **Requerimientos en Cuadrilla:** Bandeja de solicitudes asignadas con buscador en tiempo real, filtros por estado (`Todos`, `Pendiente`, `En proceso`, `Observado`, `Realizado`), etiquetas institucionales y botón para inspeccionar evidencias.
* **Botón "+ Ingresar Requerimiento":** Abre el modal de captura rápida de requerimientos vecinales al Tubo de Trabajo.

### 2. Panel Coordinación (Mesa de Dictamen & Supervisión General)
* **Auditoría Check = 1:** Mesa de fiscalización centralizada para las 6 delegaciones comunales.
* **Cola de Validación Fotográfica:** Listado filtrable de requerimientos finalizados por cuadrilla en espera de revisión visual.
* **Modal de Mesa de Auditoría y Dictamen:**
  * Cotejo simultáneo lado a lado: **1. Estado Inicial ('Antes')** vs **2. Evidencia de Término ('Después')** con código criptográfico inmutable (ej: `VER-8114-OK`).
  * 4 alternativas de dictamen formal:
    1. *Certificar & Aprobar Solicitud (Check = 1 / +1 Logro al Semáforo)*.
    2. *Observar & Devolver a Cuadrilla*.
    3. *Reasignar a Otra Delegación*.
    4. *Cancelar Solicitud*.
  * Campo de observaciones de auditoría obligatorias ante reparos.

### 3. Panel Alcaldía (Mando Estratégico • 6 Delegaciones)
* **Tablero General de Gestión y Metas Comunales:** Consolidado ejecutivo para la máxima autoridad comunal y jefaturas DIDECO.
* **Diagnóstico Situacional Comunal:** Alerta temprana de requerimientos fuera de plazo que requieren acompañamiento o intervención inmediata.
* **4 KPIs Comunales Estratégicos:** Promedio Comunal Ponderado, Tickets Validados Certificados, Pendientes en Terreno y Tickets Fuera de Plazo (que bloquean el semáforo a 0%).
* **Desglose Operativo por las 6 Delegaciones Territoriales:** Tabla comparativa en tiempo real entre:
  * Delegación Centro
  * Delegación Rural
  * Delegación La Antena
  * Delegación La Pampa
  * Delegación Avenida del Mar
  * Delegación Las Compañías

### 4. Modales y Componentes de Soporte
* **Modal Guía de Operación Municipal ("¿Cómo funciona?"):** Explica el flujo estandarizado en 4 pasos: *1. Ingreso Vecinal*, *2. Ejecución en Terreno*, *3. Certificación Check=1* y *4. Bitácora Inmutable en Caja Negra*.
* **Modal Identificación Funcionaria / Acceso Oficial:** Login institucional con RUT o correo `@laserena.cl` y contraseña.
* **Selector Rápido de Funcionarios Demo:** Permite alternar instantáneamente entre cuadrillas de La Pampa, Centro, Las Compañías, La Antena y Rural para comprobar la reactividad del semáforo.

---

## 🚀 3. Instrucciones de Ejecución

### Opción A: Abrir el Prototipo Autónomo (Inmediato)
Haga doble clic en el archivo ubicado en esta misma carpeta:
```bash
abrir_prototipo.bat
```
(O simplemente abra `index.html` con cualquier navegador web).

### Opción B: Subir a GitHub y Publicar en GitHub Pages
Esta carpeta ya está inicializada como repositorio Git local con la rama `main` y el commit inicial listo.
Para vincularlo a tu cuenta de GitHub y publicarlo gratis en la web:
1. Crea un repositorio en [GitHub.com](https://github.com/new) (ej: `prototipo-sgr-laserena`), déjalo público y sin inicializar (sin README ni .gitignore adicionales).
2. Abre PowerShell o CMD en esta carpeta (`C:\Users\B1007\Desktop\Prototipo_SGR_LaSerena`) y ejecuta:
   ```bash
   git remote add origin https://github.com/TU_USUARIO/TU_REPOSITORIO.git
   git push -u origin main
   ```
3. En GitHub: ve a **Settings** -> **Pages** -> En *Branch* selecciona `main` / `(root)` y guarda. En 1 minuto tendrás la URL pública para enviar al profesor.

### Opción C: Iniciar la Plataforma Completa (Next.js + Django REST)
Si desea levantar ambos servidores en su estación de trabajo:
1. Abra una terminal en `c:\Users\B1007\Documents\proyectoin\projecto\backend` y ejecute:
   ```bash
   .\venv\Scripts\python.exe manage.py runserver 127.0.0.1:8000
   ```
2. Abra otra terminal en `c:\Users\B1007\Documents\proyectoin\projecto\la-serena-app` y ejecute:
   ```bash
   npm run dev
   ```
3. Ingrese a: `http://localhost:3000`


