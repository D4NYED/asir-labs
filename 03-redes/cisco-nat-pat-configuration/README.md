# Cisco NAT & PAT Configuration (Packet Tracer)

## Objetivo
Configurar la traducción de direcciones de red (NAT) y sobrecarga de puertos (PAT) en routers Cisco para permitir la conectividad a Internet de una red LAN privada, optimizando el uso de direcciones IP públicas.

## Tecnologías
- **Cisco Packet Tracer**
- **Cisco IOS** (CLI)
- Protocolos: TCP/IP, NAT, PAT, ACLs.

## Topología
- **LAN**: 10.1.0.0/24 (Gateway 10.1.0.1).
- **WAN**: 172.22.34.0/24 (IP Pública Simulada).

## Tareas Realizadas
- **NAT Estático**: Mapeo 1:1 para servidores expuestos (IP Privada fija <-> IP Pública fija).
- **NAT Dinámico**: Uso de un *pool* de direcciones públicas para traducción bajo demanda.
- **PAT (NAT Overload)**: Mapeo N:1 permitiendo que múltiples hosts compartan una única IP pública mediante diferenciación de puertos (Capa 4).

## Comandos Clave
Ver archivo `router_config.ios` para la configuración completa.

## Resultado
Red privada capaz de acceder a redes externas ocultando su direccionamiento interno por seguridad y ahorro de IPs.
