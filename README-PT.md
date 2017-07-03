# PIC INVADERS

## A proposta

Projeto de um jogo estilo _Space Invaders_ para plataforma PIC. </br>
O projeto contempla descrições de **hardware e software**, utilizando um microcontrolador PIC18F45K22, da Microchip. 

PIC INVADERS foi desenvolvido **como projeto pessoal, quando estava entre meu 3º e 4º semestre do curso de Engenharia Elétrica na UFSM.**. Portanto, deixo claro que se fizesse o mesmo código **hoje em dia, com certeza muita coisa seria melhorada e otimizada.** 

O projeto foi desenvolvido incialmente utilizando a plataforma CUSCO-PIC, desenvolvida em **Caxias do Sul**. </br>
Mas também fora montado com **hardware dedicado e tudo funcionou perfeitamente**. </br>
Ainda assim, darei algumas dicas de como **montar seu próprio hardware** para rodar o game. :)

## Informações Úteis

O código foi desenvolvido especificamente para microcontroladores da **Microchip**. 

Entretanto, sendo feitas algumas modificações de inicalização e configuração de alguns registradores (principalmente de entrada e saída), e configurações do display LCD, o projeto pode ser adaptado para outros microcontroladores, de outros fabricantes. 

Sobretudo, foi desenvolvido com foco nas **plataformas PIC**. </br>
O projeto foi todo **desenvolvido em C**, utilizando um microcontrolador da **família 18F**. </br>

## Como funciona o game?

O jogo é composto de uma _IHM_ e alguns botões que permitem ao usuário controlar sua nave. </br>
A nave do jogador pode ir **para cima**, **para baixo** e **atirar** contra as naves inimigas. </br>
O game contém 4 botões, sendo o botão UP, DOWN, FIRE e SPECIAL. </br> 

*- Os arquivos .c contém o código desenvolvido utilizando C.* </br>
*- Os arquivos .h são os cabeçalhos dos arquivos .c* </br>
*- O arquivo .asm contém o código traduzido para linaguagem de montagem. (assembly)* </br>
*- O arquivo .hex é o arquivo com formato para ser gravado no microcontrolador, que é traduzido para linguagem de máquina e interpretado.* </br>
*- Dentro da pasta hardware, estão os arquivos de simulação utilizando o software Proteus.* </br>

Os arquivos .c e .h:

*- menu.c e menu.h --> Arquivos responsáveis pela função de criação do menu do game.* </br>
*- naveAtaques.c e naveAtaques.h --> Funções responsáveis pela criação dos inimigos.* </br>
*- gameControle.c e gameControle.h --> Funções de controle do jogo, como Win, GameOver, etc..* </br>
*- funcoesAdicionais. e funcoesAdicionais.h --> Funcoes extras, como CustomChar() e Random()* </br>

Para simular o jogo, basta abrir o _workspace_ da pasta **hardware** com o software _Proteus_, clicar duas vezes no microcontrolador e importar o arquivo '.hex'.

## O que foi utilizado no projeto?

**Lista de componentes utilizados no projeto (para montagem em placa universal ou em PCB):**

1. 1 x Microcontrolador PIC18F45K22 <br>
2. 1 x Soquete 40 pinos </br>
3. 1 x Regulador de tensão 7805 </br>
4. 5 x Push button </br>
5. 5 x Resistor de 1k ohm </br>
6. 1 x Cristal de 20MHz  </br>
7. 2 x Capacitores de 22pF </br>
8. 1 x Capacitor de 100nF </br>
9. 1 x LCD 2x16
10. 1 x Conector com fios para baterias de 9V </br>

Caso o circuito seja montado:

1. **Não esquecer de alimentar o microcontrolador em suas 2 entradas (2xGND e 2xVCC)**
2. **Não esquecer de aterrar os pinos não utilizados pelo display LCD.**
3. **Não esquecer de colocar o botão referente ao RESET, ou então manter o pino MCLR do microcontrolador em nível lógico alto.**

## Como Jogar?

Logo que o game é iniciado, conta-se uma breve história do enredo do game, em seguida, o usuário pode verificar os botões de controle (**Help**), ler sobre as informações de desenvolvimento do game (**About**), ou então dar um **New Game**. </br>
Cada um dos botões é responsável por acessar um conteúdo diferente (New Game, About e Help), e um dos botões é o botão "Voltar".

Caso alguma nave inimiga cruze os 16 caracteres da tela ou a nave do jogador é atingida por um tiro, é **Game Over**. </br>
Após derrotar alguns inimigos aleatórios, aparece um boss final, que tem um jeito único de ser derrotado e eu não vou contar aqui :). </br>

Quando **Game Over**, é apaga a RAM do microcontrolador, e o game é reiniciado. (essa função pode não funcionar em simulação)

Abaixo, ficam algumas imagens do hardware montado no software Proteus, e do seu funcionamento quando em simulação.

**Hardware montado e simulado em software:**

*Tela inicial:*
![Imgur](http://i.imgur.com/GbyrLvf.png) 

*Tela principal:*

![Imgur](http://i.imgur.com/3AJewfv.png) 

*Jogo funcionando perfeitamente em simulação! o/*

![Imgur](http://i.imgur.com/XVyv2A0.png) 

*E caso você falhar, não é que perde mesmo? :(*

![Imgur](http://i.imgur.com/AgxpiH6.png) 

## Implementações Futuras

**O que poderia ser melhorado?** </br>

- Penso que o game poderia ser **portado para um display maior**, talvez um display LCD 4x20 ou então algum outro hardware que acomode melhor as múltiplas funções do jogo. </br>
- O game pode ser **otimizado**, conforme comentei no início do documento, bem como podem ser implementados novos níveis, novos inimigos, etc.. </br>
- Além disso, tendo em vista a implementação em hardware mais apropriado, seria interessante **desenvolver novos níveis e um sistema de contagem de pontos.** </br>
- **Não pretendo lançar muitos updates para o game. Não nesse momento, pelo menos, pois estou envolvido em outros projetos e esse é um projeto bastante antigo. Todavia, caso tenha alguma contribuição, por gentileza, faça e me avise, ficarei muito feliz em ver. :))**

## Direitos

**O projeto pode ser reproduzido sem problema algum.** </br>
Entretanto, caso isso seja feito, apenas peço para manterem/referenciarem **créditos ao autor**.


Enjoy!

**Hollweg**

