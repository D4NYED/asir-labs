# VirtualBox Snapshot Management & Rollback Strategy

## Objetivo
Implementar una estrategia de recuperación rápida (rollback) mediante Snapshots en VirtualBox para realizar pruebas destructivas sin comprometer el estado base del sistema.

## Tecnologías
- Oracle VirtualBox
- Windows Server 2022 (Guest OS)

## Escenario
Un cliente reporta fallos tras una actualización de software.  
Se requiere replicar el problema sin perder la configuración original del servidor.

## Metodología
1. Crear snapshot inicial (Golden Image)
2. Aplicar cambios / actualizaciones
3. Forzar pruebas y errores
4. Restaurar snapshot si el sistema falla
5. Repetir pruebas hasta validar solución

## Pasos técnicos
- Snapshot inicial antes de pruebas
- Instalación de actualizaciones
- Modificación de configuraciones
- Restauración instantánea
- Validación del entorno limpio

## Ventajas
- Recuperación inmediata (RTO ≈ 0)
- Pruebas seguras
- Repetibilidad
- Ahorro de tiempo frente a reinstalación

## Resultado
Entorno de laboratorio estable que permite testing agresivo y troubleshooting sin riesgo para producción.
