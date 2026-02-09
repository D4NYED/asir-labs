# Cisco NAT & PAT Configuration Lab

## Objetivo
Configurar traducción de direcciones (NAT) en un router Cisco para permitir el acceso a Internet desde una red privada, comparando NAT estático, dinámico y PAT.

## Tecnologías
- Cisco IOS
- Cisco Packet Tracer
- IPv4 Networking
- NAT / PAT

## Escenario
Red interna 10.1.0.0/24 conectada a Internet mediante un router Cisco.

Se implementaron tres métodos de traducción:
- NAT Estático
- NAT Dinámico (Pool)
- PAT (Overload)

## Configuraciones

### NAT Estático
ip nat inside source static 10.1.0.2 172.22.34.124

### Dinámico
ip nat pool MiPool 172.22.34.123 172.22.34.123 netmask 255.255.255.0
ip nat inside source list 1 pool MiPool

### PAT (Overload)
ip nat inside source list 1 interface GigabitEthernet0/1 overload

### Verificación
show ip nat translations
show ip nat statistics
ping 8.8.8.8

