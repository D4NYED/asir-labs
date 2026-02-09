# Linux Users, Groups & Permissions Lab

## Objetivo
Configurar un entorno multiusuario seguro en Linux mediante usuarios, grupos y permisos para restringir el acceso a recursos compartidos.

## Tecnologías
- Linux Bash
- useradd / groupadd
- chmod / chown
- SGID

## Tareas Realizadas
- Creación de grupo `Practicas`
- Alta de 3 usuarios con directorio home
- Asignación a grupo secundario
- Creación de carpeta compartida `/home/Practicas`
- Permisos `770` (solo grupo acceso)
- Configuración SGID para herencia automática de grupo

## Permisos aplicados
- Propietario: rwx
- Grupo: rwx
- Otros: sin acceso
- Herencia de grupo activada (g+s)

## Comandos
Ver `commands-cheatsheet.md`.

## Resultado
Directorio colaborativo seguro donde solo miembros autorizados pueden leer, escribir y ejecutar archivos.
