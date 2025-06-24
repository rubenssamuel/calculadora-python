## Projeto R2_Cal2 - Calculadora em Shell Script

## Descrição:
Esse projeto é meu primeiro projeto de programação em python, que foi desenvolvido durante os meus estudos de Analise de Dados. Aqui foi implementado uma calculadora simples via terminal. 
Sendo meu primeiro projeto, seu nome peculiar é dado em homenagem ao R2_D2 de Star Wars, que assim como ele essa calculadora é pequena, funcional e cheia de potencial!


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


## Tecnologias:
- Python 3.x
- Terminal Linux


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



