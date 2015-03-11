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

El acrónimo RAID procede de *Redundant Array of Independent Disks*. Los tipos de
RAID se estandarizan en varios tipos[^raid-wk], de los cuales, los más usados son:

* RAID 0: Reparte los datos entre dos o más discos de forma equitativa. Así
  consigue aumentar el rendimiento.
* RAID 1: Copia exactamente los datos de un disco en el otro. Así consigue más
  fiabilidad: sólo necesita que uno de los discos funcione.
* RAID 5: Reparte los datos divididos a nivel de bloques y además distribuye la
  información de paridad entre todos los discos del conjunto.

El *RAID por software* utiliza la capacidad computacional de la CPU para
ejecutar la aplicación que mantiene el sistema RAID.
Un *RAID por hardware*, por el contrario, tiene su propia memoria y procesador
para dedicarse a mantener el sistema RAID. Es un pequeño computador dedicado. [^raid-swhw]

[^raid-swhw]: Adaptec. Hardware vs. Software RAID. <http://www.adaptec.com/nr/rdonlyres/14b2fd84-f7a0-4ac5-a07a-214123ea3dd6/0/4423_sw_hwraid_10.pdf>
[^raid-wk]: RAID. Wikipedia. <http://es.wikipedia.org/wiki/RAID>


# Cuestión 9.
**a) ¿Qué es LVM? b)¿Qué ventaja tiene para un servidor de gama baja? c)
Si va a tener un servidor web, ¿le daría un tamaño grande o pequeño a /var?**

LVM (Logical Volume Manager) es un software gestor de volúmenes lógicos, usando
internamente la función `device-mapper` del núcleo Linux.

La ventaja que aporta es que permite usar un conjunto de discos como un gran
disco único, y usar particiones redimensionables dinámicamente que pueden ser
del tamaño de varios discos.

En los servidores web, el directorio base suele colocarse en `/var/www/`, por lo
que tendría sentido otorgar un tamaño más grande de lo habitual a `/var`. [^web-var]

[^lvm-arch]: ArchLinux Wiki. <https://wiki.archlinux.org/index.php/LVM>
[^web-var]: Unix Stack Exchange. <http://unix.stackexchange.com/questions/47436/why-is-the-root-directory-on-a-web-server-put-by-default-in-var-www>


# Cuestión 10.
**¿Es conveniente cifrar también el volumen que contiene el espacio para
swap? ¿Por qué no es posible cifrar el volumen en el que montaremos /boot?**

El volumen sobre el que montemos `/boot` no debería ser cifrado para permitir
que el gestor de arranque pudiera leer la partición.

El volumen sobre el que se monta `swap` sí debería estar cifrado, porque va a
contener datos de la memoria RAM, que podrían ser datos sensibles.


# Cuestión 11.
**¿Cuál es la diferencia más significativa entre ext3 y ext2?**

La diferencia crucial entre ambos es que `ext3` implementa un sistema de
registro por diario (journaling). [^ext2-se] Mantiene un log de los cambios que se le hacen
al sistema de archivos, y puede ser usado para recuperar el sistema tras errores
por corrupción del disco. [^ext3-jr]

[^ext3-jr]: Journaling filesystem <http://www.linuxtopia.org/HowToGuides/ext3JournalingFilesystem.html>
[^ext2-se]: Unix Stack Exchange. Differences between ext2 and ext3. <http://unix.stackexchange.com/questions/43589/besides-the-journal-what-are-the-differences-between-ext2-and-ext3>
