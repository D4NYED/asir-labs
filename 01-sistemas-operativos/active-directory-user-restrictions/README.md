# Active Directory Logon Time Restrictions Lab

## Objetivo
Restringir el inicio de sesión de usuarios del dominio a franjas horarias específicas para mejorar la seguridad y el cumplimiento de normas internas.

## Tecnologías
- Windows Server 2022
- Active Directory
- CMD (net user, net group)
- Group Policy

## Tareas Realizadas
- Creación de usuarios de dominio
- Creación del grupo `AlumnosABD`
- Asignación de usuarios al grupo
- Configuración de horarios con `net user /times`
- Verificación de restricciones
- Actualización de políticas con `gpupdate /force`

## Resultado
Usuarios bloqueados fuera del horario permitido. Acceso controlado y seguro.
