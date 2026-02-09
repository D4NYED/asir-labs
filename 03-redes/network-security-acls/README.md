# Cisco ACLs – Network Access Control & Traffic Filtering

## Objetivo
Restringir el acceso a una red sensible (`192.168.30.0/24`) utilizando **ACLs extendidas en Cisco IOS**, permitiendo únicamente a hosts autorizados y bloqueando el resto del tráfico no deseado.

Implementar el principio de **mínimo privilegio (Least Privilege)** a nivel de red.

---

## Escenario

Empresa con tres segmentos:

- Red Administración → `192.168.1.0/24`
- Red Técnica → `192.168.10.0/24`
- Red Servidores (protegida) → `192.168.30.0/24`

### Requisito de seguridad
Solo:
- PC del jefe → `192.168.1.25`
- Mi PC → `192.168.10.2`

Pueden acceder al servidor → `192.168.30.10`

Cualquier otro host → ❌ BLOQUEADO

---

## Topología

Router Cisco interconectando 3 redes mediante:
- G0/0 → Red 192.168.1.0
- G0/1 → Red 192.168.10.0
- G0/2 → Red 192.168.30.0 (servidores)

Switches segmentan colisiones y el router controla el tráfico L3.

---

## ¿Por qué ACL Extendida?

Se eligió **ACL extendida** en lugar de estándar porque permite filtrar por:

✅ IP origen  
✅ IP destino  
✅ Protocolo  

Las ACL estándar solo filtran por origen → demasiado impreciso.

Aquí necesitamos control granular hacia **un destino específico (servidor)**.

---

## Implementación

### Crear ACL

access-list 100 permit ip host 192.168.1.25 host 192.168.30.10
access-list 100 permit ip host 192.168.10.2 host 192.168.30.10
access-list 100 deny ip any 192.168.30.0 0.0.0.255
access-list 100 permit ip any any

## Aplicar en interfaces (entrada)
interface GigabitEthernet0/0
 ip access-group 100 in

interface GigabitEthernet0/1
 ip access-group 100 in
