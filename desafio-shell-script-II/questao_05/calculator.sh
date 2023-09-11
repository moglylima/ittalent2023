#!/bin/bash

# Funcoes
add() {
  result=$(echo "$1 + $2" | bc)
  echo "Resultado: $result"
}

subtract() {
  result=$(echo "$1 - $2" | bc)
  echo "Resultado: $result"
}

multiply() {
  result=$(echo "$1 * $2" | bc)
  echo "Resultado: $result"
}

divide() {
  if [ "$2" -eq 0 ]; then
    echo "Erro: Divisão por zero."
  else
    #result=$(echo "scale=2; $1 / $2" | bc)
    result=$(awk "BEGIN {printf \"%.2f\", $1 / $2}")
    echo "Resultado: $result"
  fi
}

# Menu
while true; do
  echo "Escolha uma operação:"
  echo "1. Adição (+)"
  echo "2. Subtração (-)"
  echo "3. Multiplicação (*)"
  echo "4. Divisão (/)"
  echo "5. Sair"

  read choice

  case $choice in
    1)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      add "$num1" "$num2"
      ;;
    2)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      subtract "$num1" "$num2"
      ;;
    3)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      multiply "$num1" "$num2"
      ;;
    4)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      divide "$num1" "$num2"
      ;;
    5)
      echo "Saindo..."
      exit 0
      ;;
    *)
      echo "Opção inválida. Tente novamente."
      ;;
  esac
done
