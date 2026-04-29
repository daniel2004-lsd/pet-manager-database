
---

## 🗄️ **REPOSITORIO 3: Base de Datos (`mascotas-database`)**

### **README.md**

```markdown
# 🐾 VIP Mascotas - Base de Datos

## 📖 ¿Qué es?
Esquema y migraciones de la base de datos PostgreSQL para el sistema VIP Mascotas.

## 🎯 ¿Para qué sirve?
- Definir la estructura de la base de datos
- Gestionar migraciones (cambios en la BD)
- Proveer datos de ejemplo para pruebas
- Mantener versionado el esquema

## 🛠️ Tecnologías
- PostgreSQL 15
- Liquibase (migraciones)

## 📊 Modelo de Datos

### Tabla `duenos`
| Columna | Tipo | Descripción |
|---------|------|-------------|
| id | SERIAL | Identificador único |
| nombre | VARCHAR(100) | Nombre del dueño |
| telefono | VARCHAR(20) | Teléfono de contacto |
| direccion | VARCHAR(200) | Dirección |

### Tabla `mascotas`
| Columna | Tipo | Descripción |
|---------|------|-------------|
| id | SERIAL | Identificador único |
| nombre | VARCHAR(100) | Nombre de la mascota |
| especie | VARCHAR(50) | Perro, Gato, etc. |
| raza | VARCHAR(50) | Raza de la mascota |
| edad | INT | Edad en años |
| dueno_id | INT | FK → duenos(id) |

## 🗂️ Reglas de Negocio
- **Nivel BRONCE**: 0-3 años
- **Nivel PLATA**: 4-6 años
- **Nivel ORO**: 7-9 años
- **Nivel PLATINO**: 10+ años

## 🚀 Cómo ejecutar

### Opción 1: Docker (Recomendado)
```bash
docker run --name vip-postgres \
  -e POSTGRES_DB=vip_mascotas \
  -e POSTGRES_USER=vipuser \
  -e POSTGRES_PASSWORD=vippass \
  -p 5432:5432 -d postgres:15
  markdown
# 🐾 VIP Mascotas - Base de Datos con Control de Versiones

## 📖 ¿Qué es?
Repositorio que gestiona el esquema y las migraciones de la base de datos PostgreSQL utilizando **Liquibase** para el control de versiones de la estructura de datos.

## 🎯 Objetivo
- Mantener un historial completo de cambios en la BD
- Permitir migraciones automáticas y controladas
- Facilitar el trabajo en equipo sin conflictos
- Garantizar que todos los entornos tengan la misma estructura

## 🛠️ Tecnologías
- **PostgreSQL 15** - Motor de base de datos
- **Liquibase 4.25** - Control de versiones de BD
- **Docker** - Contenedor para desarrollo

## 📁 Estructura del Repositorio