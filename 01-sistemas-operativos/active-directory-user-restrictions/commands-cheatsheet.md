# ACTIVE DIRECTORY MANAGEMENT (CMD)
# ---------------------------------

# Verificar dominio actual
echo %USERDOMAIN%

# Crear usuario en el dominio
net user alumno1 Contraseña123 /add /domain

# Listar usuario
net user alumno1 /domain

# Crear grupo global en el dominio
net group AlumnosABD /add /domain

# Añadir usuarios al grupo
net group AlumnosABD alumno1 alumno2 alumno3 /add /domain

# Establecer restricciones horarias (Logon Hours)
# Formato: Día-Día,Hora-Hora;Día,Hora-Hora
net user alumno1 /times:L-V,16:00-21:00;S,10:00-13:00 /domain

# Verificar configuración del usuario
net user alumno1 /domain

# Forzar actualización de políticas de grupo (si aplica GPO)
gpupdate /force
