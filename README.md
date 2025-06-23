## Projeto R2_Cal2 - Calculadora em Shell Script

## Descrição:
Esse projeto é uma adaptação do exercício feito em Python no modulo 1 do curso de analise de dados, agora reescrito em Shell Script. Ele permite realizar operações matemáticas básicas com entrada via terminal, com salvamento do histórico e tratamento de erros.


## Arquivos:

- 'R2_Cal2.sh' : Script da calculadora
- 'comando.txt: Instruções de execução no terminal
- 'resultados/historico.txt' : Gerado automaticamente com os resultados

=====================

## Como executar:

1. Acesse o diretório onde está o projeto:
 ''''bash

cd /home/rubenssamuel/R2_Cal2/



2. Dê permisão para execução:
chmod 744 R2_Cal2.sh



3. Execute o script:
./R2_Cal2.sh


## Funcionalidades: 

- Operações suportadas: +, -, *, /
- Validação de entrada númerica
- Tratamento para divisão por zero
- Mensagens de erro padronizadas e centralizadas
- Histórico de cálculos salvos em resultados/historico.txt


## Exemplo:

Digite o primeiro número: 6
Digite o segundo número: 2
Digite a operação desejada ( + - * /): /
Resultado: 3.00
[INFO] Resultado salvo em resultado/historico.txt


## Validações implementadas:

- Checa se os dois valores digitados são números
- Evita erros do bc por entrada inválida
- Padroniza mensagens de erro com [ERRO]



