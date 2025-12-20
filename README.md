# BackEnd-Shop

API REST en Spring Boot para aplicación e-commerce con operaciones CRUD de usuarios y productos.

## Descripción

Backend que maneja la lógica de negocio del e-commerce con autenticación JWT, gestión de usuarios, productos y clientes.a

## Estructura

```
backendfinal2/
├── src/main/java/ar.com.ayiejercicio2final/
│   ├── authentication/   # Sistema JWT
│   │   ├── config/
│   │   ├── controller/
│   │   ├── entity/
│   │   ├── jwt/
│   │   ├── model/
│   │   ├── repository/
│   │   └──service
│   ├── config/
│   ├── controller/ #Endpoints REST
│   ├── dto/
│   ├── exception/
│   ├── persistence/ #Entidades y Repositorios
│   │   ├── entity/
│   │   └──repository/
│   ├── service/   #Logica de negocio
│   └── ExamenfinalApplication.java
├── src/main/resources/
│   ├── application.properties
│   └── log4j2.properties
├── src/test/java/              # Tests unitarios e integración
├── Dockerfile
├── pom.xml                   # Configuración Maven
├── mvnw                      # Maven wrapper
├── mvnw.cmd                  # Maven wrapper Windows
└── README.md                 # Documentación del backend

```

## Tecnologías

- **Java 17** + Spring Boot
- **Spring Security** + JWT
- **JPA/Hibernate** + MySQL
- **Maven** + Docker
- **Swagger** para documentación

## Instalación

### Requisitos
- Java 17+
- Maven 3.8+
- MySQL (ver [Database-Shop](https://github.com/sudo-init-project/Database-Shop))

### Ejecución Local

```bash
# Clonar y ejecutar
git clone https://github.com/sudo-init-project/BackEnd-Shop.git
cd BackEnd-Shop
./mvnw spring-boot:run
```

### Con Docker

```bash
docker build -t backend-shop .
docker run -p 8080:8080 backend-shop
```

## API Endpoints

### Autenticación
- `POST /api/auth/login` - Iniciar sesión
- `POST /api/auth/register` - Registrar usuario

### Usuarios (ADMIN)
- `GET /api/usuarios` - Listar usuarios
- `POST /api/usuarios` - Crear usuario
- `PUT /api/usuarios/{id}` - Actualizar usuario
- `DELETE /api/usuarios/{id}` - Eliminar usuario

### Productos
- `GET /api/productos` - Listar productos
- `POST /api/productos` - Crear producto (ADMIN)
- `PUT /api/productos/{id}` - Actualizar producto (ADMIN)
- `DELETE /api/productos/{id}` - Eliminar producto (ADMIN)

### Clientes
- `GET /api/clientes` - Listar clientes
- `POST /api/clientes` - Crear cliente
- `PUT /api/clientes/{id}` - Actualizar cliente
- `DELETE /api/clientes/{id}` - Eliminar cliente

## Configuración

```properties
# application.properties
spring.datasource.url=jdbc:mysql://mysql-db:3306/dbejercicio2final
spring.datasource.driverClassName=com.mysql.cj.jdbc.Driver
spring.datasource.username=root
spring.datasource.password=password
```

## Documentación

- **Swagger UI**: http://localhost:8080/swagger-ui.html
- **Health Check**: http://localhost:8080/actuator/health

## Testing

```bash
./mvnw test
```

## Repositorios Relacionados

- [Database-Shop](https://github.com/sudo-init-project/Database-Shop) - Esquema MySQL
- [FrontEnd-Shop](https://github.com/sudo-init-project/FrontEnd-Shop) - React App
- [Infra-App-K8s](https://github.com/sudo-init-project/Infra-App-K8s) - Kubernetes

a
