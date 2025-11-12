#!/bin/bash
# ===============================================
# Script: instalar_configurar_docker.sh
# Propósito: Instalar, habilitar y verificar Docker
# Grupo: 5 - Proyecto Linux ISL2025
# ===============================================

echo "=== 1. Actualizando repositorios ==="
sudo apt update -y

echo "=== 2. Instalando dependencias ==="
sudo apt install -y ca-certificates curl gnupg lsb-release

echo "=== 3. Agregando clave GPG y repositorio oficial de Docker ==="
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "=== 4. Instalando Docker Engine ==="
sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "=== 5. Habilitando e iniciando el servicio Docker ==="
sudo systemctl enable docker
sudo systemctl start docker

echo "=== 6. Creando usuarios adminsys y tecnico ==="
sudo useradd -m adminsys || true
sudo useradd -m tecnico || true

echo "=== 7. Agregando usuarios al grupo docker ==="
sudo usermod -aG docker adminsys
sudo usermod -aG docker tecnico

echo "=== 8. Verificando instalación ==="
echo "--- Versión de Docker ---"
docker --version

echo "--- Estado del servicio ---"
systemctl status docker --no-pager | grep Active

echo "--- Ejecutando contenedor de prueba hello-world ---"
docker run hello-world

echo "--- Listando contenedores ---"
docker ps -a

echo "=== Instalación y verificación completadas ==="
