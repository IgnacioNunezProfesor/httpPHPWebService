# httpPHPWebService

Desarrollaremos un servicio básico con docker: apache y php.
Devolverá datos en json.
Pasos para configurar el proyecto:

## Edita el archivo hosts

* Linux /etc/hosts
* Windows C:\Windows\system32\drivers\etc\hosts

Añade
> 127.0.0.1   httpserverjson.v1.localhost

## Instala php

## Instala Docker
* ¿Cómo instalar Docker en ubuntu?[https://linuxiac.com/how-to-install-docker-on-ubuntu-24-04-lts/]
* Instalar docker-compose
  > apt install docker-compose

## Levantar el servicio web
> chmod +x ./script/build*.sh

> ./script/buildDEVApachephp.sh

## Depurar js
* Launh Edge o Launch Firefox

## TODO

### Docker service java spring boot web service rest json 

Crear un WS rest en java spring boot usando docker compose.

[Docker spring boot](https://medium.com/@saygiligozde/using-docker-compose-with-spring-boot-and-postgresql-235031106f9f) 

[Spring boot rest ws](https://spring.io/guides/tutorials/rest)

Tareas a realizar
1. Crear Dockerfile con las librerias necesarias
2. Crear docker-compose con la definición de los entornos de desarrollo y producción
3. Crear env/.env con las variables de entorno
4. Crear los script en línea de comando para levantar los servicios de los entornos DEV, TEST y PRO (Powershell y sh)
5. Crear codigo Java spring boot
6. Build las imagenes de cada entorno y publicarlo en el registro
