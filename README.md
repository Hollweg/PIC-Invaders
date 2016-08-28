# PIC INVADERS

## A proposta

Projeto de um jogo estilo Space Invaders para plataforma PIC. </br>
O projeto contempla descrições de **hardware e software**, utilizando um microcontrolador PIC18F45K22, da Microchip. </br>
O projeto foi desenvolvido como projeto pessoal, quando estava em meu 3º semestre do curso de Engenharia Elétrica na UFSM. </br>
Portanto, deixo claro que se fizesse o mesmo código hoje em dia, com certeza muita coisa seria melhorada, otimizada, e o código seria extremamente reduzido. </br>
O projeto foi desenvolvido utilizando a plataforma CUSCO-PIC, desenvolvida em Caxias do Sul, entretanto, mostro um passo a passo de como montar sseu próprio hardware para rodar o game. :)

## Utilidade

O código foi desenvolvido especificamente para microcontroladores da Microchip. </br>
Entretanto, sendo feitas modificações de inicalização, e configuração de alguns registradores, principalmente de entrada e saída, e configurações do display LCD, o projeto pode ser adaptado para outros microcontroladores, de outras fabricantes. </br>
Sobretudo, foi desenvolvido com foco nas plataformas PIC. </br>
O projeto foi todo desenvolvido em C. </br>

## Como funciona?

O jogo é composto de uma IHM e alguns botões que permitem ao usuário controlar sua nave.

*- Os arquivos .c contém o código desenvolvido utilizando C.* </br>
*- O arquivo .asm contém o código traduzido para linaguagem de montagem. (assembly)* </br>
*- O arquivo .hex é o arquivo com formato para ser gravado no microcontrolador, que é traduzido para linguagem de máquina e interpretado.* </br>
*- O arquivo .mccpi é o arquivo que linka todos os arquivos de projeto, criado pelo compilador MikroC, utilizado para desenvolvimento.* </br>
*- Os demais arquivos, são arquivos de configuração criados pelo compilador.* </br>
*- Dentro da pasta /Proteus está o esquemático com o hardware do circuito.*

## O que foi utilizado no projeto?

**Lista de componentes utilizados no projeto:**

1. 1 x Microcontrolador PIC18F45K22 <br>
2. 1 x Soquete 40 pinos </br>
3. 1 x Regulador de tensão 7805 </br>
4. 4 x Push button </br>
5. 4 x Resistor de 1k ohm </br>
6. 1 x Cristal de 20MHz  </br>
7. 2 x Capacitores de 22pF </br>
8. 1 x Capacitor de 100nF </br>
10. 1 x Conector com fios para baterias de 9V
11. 1 x placa universal

Abaixo, tem-se uma imagem do circuito montado.



## Direitos

**O projeto pode ser reproduzido sem problema algum.** </br>
Entretanto, caso isso seja feito, apenas peço para manterem/referenciarem **créditos ao autor**.

Enjoy!

Hollweg

