#!/bin/bash

# Encabezado del reporte
echo "=========================================="
echo "     REPORTE DEL SISTEMA - GRUPO X"
echo "=========================================="

# Fecha y hora actual
echo "📅 Fecha y hora: $(date)"
echo "🖥️  Hostname: $(hostname)"
echo "👥 Usuarios conectados: $(who | wc -l)"

# Información del sistema
echo "💾 Espacio libre en disco:"
df -h / | awk 'NR==2 {print "   - " $4 " libres de " $2}'

echo "🧠 Memoria RAM disponible:"
free -h | awk 'NR==2 {print "   - " $7 " libres de " $2}'

# Información de Docker
echo "🐳 Contenedores Docker activos: $(docker ps -q | wc -l)"
echo "📦 Todos los contenedores: $(docker ps -a | wc -l)"

# Separador final
echo "=========================================="
