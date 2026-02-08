# Windows Server User Lifecycle Management (Onboarding & Offboarding)

## Objetivo
Gestionar el ciclo completo de vida de usuarios en Windows Server 2022, asegurando una transición segura entre empleados salientes y nuevos trabajadores sin afectar la continuidad del servicio.

## Tecnologías
- Windows Server 2022
- Local Users & Groups (lusrmgr.msc)
- NTFS Permissions
- Shared Folders
- Registry (ProfileList)

## Escenario
Sustitución urgente de un empleado:
- Eliminación segura de cuenta antigua
- Respaldo de datos
- Limpieza de perfiles
- Creación de nuevo usuario
- Asignación de permisos y recursos

## Tareas Realizadas

### Offboarding (Salida de usuario)
- Verificación de cuenta existente
- Backup del perfil (`C:\Users\usuario`)
- Eliminación de cuenta local
- Limpieza de perfil y registro
- Revocación de permisos compartidos

### Onboarding (Nuevo empleado)
- Creación de usuario local
- Password temporal + cambio obligatorio
- Creación automática de perfil
- Asignación a grupos de seguridad
- Configuración de permisos NTFS y carpetas compartidas

## Herramientas usadas
- lusrmgr.msc
- File Explorer
- regedit
- Propiedades de carpetas (NTFS/Sharing)

## Resultado
Proceso repetible, seguro y rápido para sustituir empleados sin pérdida de datos ni riesgos de seguridad.
