#!/bin/bash

echo "Calculadora Simples"

echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"

read opcao

if [ "$opcao" -eq 1 ]; then
    resultado=$(echo "$num1 + $num2" | bc)
    echo "Resultado: $resultado"

elif [ "$opcao" -eq 2 ]; then
    resultado=$(echo "$num1 - $num2" | bc)
    echo "Resultado: $resultado"

elif [ "$opcao" -eq 3 ]; then
    resultado=$(echo "$num1 * $num2" | bc)
    echo "Resultado: $resultado"

elif [ "$opcao" -eq 4 ]; then
    if [ "$num2" != "0" ]; then
        resultado=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Resultado: $resultado"
    else
        echo "Erro: divisão por zero"
    fi
else
    echo "Opção inválida"
fi
