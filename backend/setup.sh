#!/bin/bash

echo "🛠️ Criando estrutura simplificada do projeto cadastro-web..."

# Diretórios essenciais
mkdir -p cadastro-web/backend/src/main/java/com/cadastro/{controller,model,repository}
mkdir -p cadastro-web/backend/src/main/resources/static/frontend

# Arquivos base
touch cadastro-web/backend/src/main/resources/application.properties
touch cadastro-web/backend/src/main/resources/static/frontend/{index.html,script.js,style.css}
touch cadastro-web/setup.sh

# Cria o pom.xml
cat <<EOF > cadastro-web/backend/pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
  http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.cadastro</groupId>
  <artifactId>cadastro-web</artifactId>
  <version>1.0.0</version>
  <packaging>jar</packaging>
  <name>cadastro-web</name>

  <dependencies>
    <dependency>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
    <dependency>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>
    <dependency>
      <groupId>org.postgresql</groupId>
      <artifactId>postgresql</artifactId>
      <scope>runtime</scope>
    </dependency>
  </dependencies>

  <build>
    <plugins>
      <plugin>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-maven-plugin</artifactId>
      </plugin>
    </plugins>
  </build>
</project>
EOF

echo "✅ Estrutura pronta em cadastro-web/"
