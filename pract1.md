---
title: Práctica 1
author: Mario Román

---

# 1. Introducción

## Cuestión 1.
**¿Qué modos y tipos de “Virtualización Hardware” existen?**

Las técnicas más comunes de virtualización del hardware son las siguientes:
[^virt-sml] [^virt-wkp]

* Virtualización completa: donde la máquina virtual simula los propios
  componentes de hardware, sobre los que se ejecuta el SO.
* Virtualización por S.O.: donde no se virtualiza el hardware. Se ejecuta una
  única instancia de kernel de SO huésped, y la virtualización se realiza sobre ella.
* Paravirtualización: donde los SO guests se ejecutan sobre otro SO host y
  tienen que comunicarse con él para conseguir la virtualización.

[^virt-sml]: Virtualización. *Smaldone.*  <https://blog.smaldone.com.ar/2008/09/20/virtualizacion-de-hardware/>
[^virt-wkp]: Virtualización. *Wikipedia.* <http://es.wikipedia.org/wiki/Virtualizaci%C3%B3n#Virtualizaci.C3.B3n_asistida_por_Hardware>


## Cuestión 2.
**¿Busque en Internet ofertas de servicios de, al menos, dos proveedores de
VPS (Virtual Private Server) y compare con el precio de alquiler del servicio, con el de
uso de servidores dedicados (administrados y no administrados) de características
similares?**

El proveedor **Hostalia** [^prov-hostalia] ofrece:

* Servidor dedicado: por 45€/mes.
* Servidor virtual: por 11.21€/mes.

[^prov-hostalia]: Hostalia. Servidores dedicados y virtuales. <http://www.hostalia.com/servidores/>


## Cuestión 3.
**Busque dos soluciones de VMSW alternativas a las propuestas de VMWare
y Virtual Box. Explique sus principales características y diferencias con las soluciones
que vamos a emplear en clase.**

*QEMU* es un software emulador y virtualizador de máquinas virtuales. [^qemu]

*OpenVZ* es una tecnología de virtualización a nivel de sistema operativo
 Linux. Sobre ella se constuye *Virtuozzo*.[^openvz]

[^qemu]: QEMU <http://wiki.qemu.org/Main_Page>
[^openvz]: OpenVZ <http://openvz.org/Main_Page>


# Cuestión 4.
**Enumere las cinco innovaciones en Windows 2012 R2 respecto a 2008R2
que considere más importantes.**

* Permite servidores de mayor capacidad. Permite configurar hasta 320
  procesadores lógicos, 4 terabytes de memoria física y 1 terabyte de memoria
  virtual. [^12vs08plural]

[^12vs08plural]: Pluralsight. Windows Server 2012 R2 vs 2008 R2. <http://blog.pluralsight.com/server-2012-versus-server-2008>


# Cuestión 5.
**¿Qué empresa hay detrás de Ubuntu? ¿Qué otros productos/servicios
ofrece? ¿Qué es MAAS (<https://maas.ubuntu.com/>)?**

Canonical es la empresa que se encarga del desarrollo de Ubuntu. El resto de sus
servicios toman como base Ubuntu. [^canonical]

Entre sus otros productos se incluyen Landscape, Juju y MAAS. [^canonical-prod]

[^canonical]: Canonical. The company behind Ubuntu. <http://www.canonical.com/>
[^canonical-prod]: Canonical. Products. <http://www.canonical.com/products>


# Cuestión 6.
**¿Qué relación guardan las distribuciones de Linux CentOS, Fedora y
RedHat Enterprise Linux? Comente las similitudes y diferencias que le parezcan más
significativas.**

*Fedora* es una distribución gratutita y libre escrita por la compañía RedHat. Se
centra en lanzar ediciones cada poco tiempo.

*RedHat* es una versión comercial (pero libre) desarrollada también por RedHat,
de la distribución.

*CentOS* es un clon comunitario de RedHat. Libre y gratuito. Clona las ediciones comerciales pero
no incluye el soporte y depende directamente de la comunidad.[^redhat-miessler] [^redhat-pydot]

[^redhat-miessler]: Daniel Miessler. Diferencias entre RedHat, CentOS y Fedora. <https://danielmiessler.com/study/fedora_redhat_centos/>
[^redhat-pydot]: Pydot. Diferencias entre RedHat, CentOS y Fedora. <http://www.pydot.com/documentacion/Diferencias-entre-Fedora-CentOS-y-Red-Hat>

# Cuestión 7.
**Busque indicadores de porcentaje de uso global o de cuota de mercado de
SO de Servidores. No olvide poner la fuente de donde saca la información y preste
atención a la fecha de ésta.**


# Cuestión 8.
**a) ¿De qué es el acrónimo RAID? b) ¿Qué tipos de RAID hay? c) ¿Qué
diferencia hay entre RAID mediante SW y mediante HW?**

El acrónimo RAID procede de *Redundant Array of Independent Disks*.
