**************************************************************
# Proyecto Linux - Grupo 6

## Descripción del Proyecto
Implementación de servidor Linux automatizado con Docker para la asignatura Introducción al Software Libre.
**************************************************************
--------------------------------------------------------------
**************************************************************
## Integrantes
	NOMBRE				CARNET
- Alfaro Murillo, Cledy Yamileth	AM19116
- Herrera Amaya, Daniel Armando		HA13028
- Morales Caceres, Maynor Gustavo 	MC22069
- Mancia Flamenco, Larry Omar		MF22012
**************************************************************
--------------------------------------------------------------
**************************************************************
## Estructura del Proyecto

/proyecto/

├── datos/ # Archivos de configuración

├── web/ # Archivos del sitio web

├── scripts/ # Scripts de automatización

└── capturas/ # Evidencias del proyecto
<<<<<<< HEAD
**************************************************************
--------------------------------------------------------------
**************************************************************
=======
********************************************************************
--------------------------------------------------------------------
#Creación de los usuarios:

adminsys

tecnico

visitante

#Creación de grupos:

soporte

web

Asignación de grupos:

adminsys → privilegios sudo

tecnico → grupo soporte

visitante → grupo **web`

--------------------------------------------------------------------
********************************************************************

#Permisos configurados:

datos/ pertenece al grupo soporte

web/ pertenece al grupo web

Se activó el bit setgid en ambos directorios para que los archivos heredaran el grupo:
chmod g+s /proyecto/datos
chmod g+s /proyecto/web
--------------------------------------------------------------------
********************************************************************
#Automatización y Monitoreo
Script de Monitoreo

Se creó el archivo:

/proyecto/scripts/reporte_sistema.sh

Con información como:

Fecha y hora actual

Nombre del host

Usuarios conectados

Espacio libre en disco

Memoria RAM disponible

Contenedores Docker activos

Se dieron permisos de ejecución:

chmod +x /proyecto/scripts/reporte_sistema.sh
--------------------------------------------------------------------
********************************************************************
#Tarea Programada (Cron)

Se creó la tarea cada 30 minutos:

*/30 * * * * /proyecto/scripts/reporte_sistema.sh >> /var/log/proyecto/reporte_sistema.log

--------------------------------------------------------------------
********************************************************************


##Conexión al repositorio por medio de SSH
git@github.com:ISL2025/proyecto-linux_grupo5.git

--------------------------------------------------------------------
********************************************************************



>>>>>>> 6814745a9dd51c872828589ded7065ba1d1024fd
## Instalación y Configuración
1. Clonar repositorio: `git clone [url]`
2. Ejecutar script de configuración: `./scripts/configurar.sh`
3. Verificar servicios: `docker ps`
<<<<<<< HEAD
**************************************************************
--------------------------------------------------------------
**************************************************************
=======
********************************************************************
--------------------------------------------------------------------
********************************************************************
#Docker
Instalación y Configuración

Se instaló Docker y se habilitó el servicio:

sudo systemctl enable docker
sudo systemctl start docker


Se añadieron los usuarios adminsys y tecnico al grupo docker:

sudo usermod -aG docker adminsys
sudo usermod -aG docker tecnico

#Verificación Inicial

Ejecución del contenedor de prueba:

docker run hello-world


Listado de contenedores:
docker ps -a
--------------------------------------------------------------------
********************************************************************

Evidencias
Las capturas del proceso se guardaron en:
/proyecto/capturas/

>>>>>>> 6814745a9dd51c872828589ded7065ba1d1024fd
## Tecnologías Utilizadas
- Linux Ubuntu/Mint/Debian
- Docker
- Nginx
- Bash Scripting
- Git
<<<<<<< HEAD
**************************************************************
=======
********************************************************************
>>>>>>> 6814745a9dd51c872828589ded7065ba1d1024fd
