#!/bin/bash

# Indicando o diretorio
diretorio="/var/log"

# Encontra arquivos .log com mais de 7 dias de atividade e remove-os
find "$diretorio" -name "*.log" -type f -mtime +7 -exec rm {} \;

echo "Arquivos .log com mais de 7 dias de atividade foram removidos."