#PIC INVADERS

##The purpose

**This project is the development of a Space Invaders style game. It is some kind of Space Invaders, but, for Microchip PIC platform.** </br>

The project includes **hardware and software** descriptions, using a PIC18F45K22 microcontroller from Microchip.

PIC INVADERS was developed as a **personal project when I was between my 3rd and 4th semester of the Electrical Engineering at UFSM.** So I would like to make it clear that if I would develop the same code today, certainly a lot of things would be different, improved and optimized.

The project was developed initially using CUSCO-PIC platform, hardware platform developed in **Caxias do Sul**.
However, it was also mounted in **dedicated hardware, and everything worked perfectly**. </br>
Still, I will give some tips on how to **build your own hardware** to run the game. :)

##Useful Information

The code was developed specifically for **Microchip** microcontrollers.

However, with **certain changes in initialization configuration files, registers (mainly input and output), and settings of the LCD display, the design can be adapted to other microcontrollers from other manufacturers.**

Above all, it was developed with a focus on PIC platforms. </br>
The project was developed **entirely in C**, using a **18F family microcontroller**. </br>

##How the game works?

The game consists of an Human Machine Interface (IHM) and some buttons that allow the user to control your ship. </br>
The player ship can go up, down and shoot enemy ships. </br>
The game contains 4 buttons: UP, DOWN, FIRE and SPECIAL. </br>

**File types in project:**

*- The .c files contains the developed software in C* </br>
*- The .h files are the headers of .c files* </br>
*- The .asm file contains the code translated to assembly language* </br>
*- The .hex file is the ready to burn file, containing the code in hexadecimal language.* </br>
*- Inside /Proteus folder it is the project hardware schematic.* </br>

The .c and .h files:

*- menu.c e menu.h --> Files responsible for creating function of the game menu.* </br>
*- naveAtaques.c e naveAtaques.h --> Functions responsible for the creation of enemies.* </br>
*- gameControle.c e gameControle.h --> Control game functions, like Win, GameOver, etc..* </br>
*- funcoesAdicionais. e funcoesAdicionais.h --> Extra functions, like CustomChar() and Random()* </br>

To **simulate the game**, just open the workspace on /**hardware folder using Proteus software.** </br>
Double-click on the microcontroller and import the .hex file.

##Which was used in the project?

**Bill of materials (considering mounting in an universal board or PCB):**

1. 1 x PIC18F45K22 microcontroller <br>
2. 1 x 40 pins header </br>
3. 1 x 7805 Voltage Regulator </br>
4. 5 x Push button </br>
5. 5 x 1k ohm resitors</br>
6. 1 x 20MHz Crystal </br>
7. 2 x 22pF Capacitors </br>
8. 1 x 100nF Capacitors </br>
9. 1 x LCD 2x16 </br>
10. 1 x 9V battery wired connector </br>

In case of building the circuit:

1. **Do not forget to feed the microcontroller in its 2 different pins (2xGND e 2xVCC)**
2. **Do not forget to put 0V on the LCD not used pins.**
3. **Do not forget RESET button, or keep the MCLR microcontroller pin in HIGH STATE.**

##How to play?

Once the game starts, tells a brief history of the game's plot, then the user can check the control buttons (**Help**), read on the game development information (**About**), or take a **New Game**. </br>
Each button is responsible for accessing different content (New Game, About and Help), and one of the buttons is the "Back" button.

If any enemy ship cross the 16 screen characters or the player's ship is hit by a shot, it's **Game Over**.</br>
After defeating some random enemies, it appears a final boss, who has a unique way of being defeated and I will not tell here. </br>

When **Game Over**, the microcontroller RAM is erased, and the game is restarted. (This function may not work in simulation).

Below are some pictures of the hardware mounted in Proteus software, and its operation during simulation.

**Hardware mounted in Proteus software:**

*Welcome screen:*

![Imgur](http://i.imgur.com/GbyrLvf.png) 

*Main screen:*

![Imgur](http://i.imgur.com/3AJewfv.png) 

*The game is running o/:*

![Imgur](http://i.imgur.com/XVyv2A0.png) 

*You failed! Game Over. :(*

![Imgur](http://i.imgur.com/AgxpiH6.png) 

##Future Implementations

**What could be enhanced?** </br>

- I think that the game could be **ported to a larger display**, maybe a 4x20 LCD display and then some other hardware that best accommodate the multiple functions of the game. </br>
- The game can be **optimized**, as I said at the beginning of the document and can be implemented new levels, new enemies, etc .. </br>
- Furthermore, in order to implement more appropriate hardware, it would be interesting to **develop new levels and point counting system.** </br>
- **I do not intend to release many updates to the game. Not now, at least, because I am involved in other projects and this is a very old one. However, if you have any contribution, please, please let me know and I shall be very happy to see. :))**

##Copyrights

**The project can be reproduced without any problems.** </br>
However, I only ask you to keep **credits to the author**. </br>


Enjoy!

**Hollweg**

