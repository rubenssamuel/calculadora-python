#!/bin/bash

#====================================================================
# Calculadora R2_Cal2 em Shell Script
# Autor: Rubens Samuel da Rosa
# Descrição: Calculadora reescrita do módulo Python para Schell Cript
#=====================================================================

# Função para validar se é número
is_number() {
     echo "$1" | grep -Eq '^[-+]?[0-9]*\.?[0-9]+$'
return $?
}

echo "=== R2_Cal2 ==="

# Criação do diretório de resultados
mkdir -p resultados

# Entrada do primeiro número
read -p "Digite o primeiro número: " num1
if ! is_number "$num1"; then
    echo "[ERRO] Primeiro valor inválido. Digite um número."
    exit 1
fi

# Entrada do segundo número
read -p "Digite o segundo número: " num2
if ! is_number "$num2"; then
    echo "[ERRO] Segundo valor inválido. Digite um número."
    exit 1
fi

# Operação desejada
read -p "Digite a operação desejada ( + - * /): " operacao


# Realiza a operação
case "$operacao" in

+)
    resultado=$(echo "$num1 + $num2" | bc)
    ;;
-)
    resultado=$(echo "$num1 - $num2" | bc)
    ;;
\*)
    resultado=$(echo "$num1 * $num2" | bc)
    ;;
/)
    if [ "num2" == "0" ]; then
         echo "[ERRO] Divisão por zero não é permitida."
         exit 1
    fi
    resultado=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
*)
    echo "[ERRO] Operação inválida. Use apenas + - * /"
    exit 1
    ;;
esac

# Exibição do resultado
echo "Resultado: $resultado"

# Salvando no histórico
echo "$num1 $operacao $num2 = $resultado" >> resultados/historico.txt
echo "[ERRO] Resultado salvo em resultados/historico.txt"
