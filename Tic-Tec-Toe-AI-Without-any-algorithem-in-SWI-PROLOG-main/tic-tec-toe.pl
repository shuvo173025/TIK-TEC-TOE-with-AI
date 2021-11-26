play:- X1 = [1,2,3,4,5,6,7,8,9],nl,draw(X1),init().
draw(X1):- [A,B,C,D,E,F,G,H,I] = X1,nl,
	write("          "),write(A),write("|"),write(B),write("|"),write(C),nl,
	write("          "),write("-----"),nl,
	write("          "),write(D),write("|"),write(E),write("|"),write(F),nl,
	write("          "),write("-----"),nl,
	write("          "),write(G),write("|"),write(H),write("|"),write(I),
	nl,nl.
gameover1():-nl,write("          "),write("Human Win!"),nl.
gameover2():-nl,write("          "),write("AI Win!HaHaHa"),nl.
gameover3():-nl,write("          "),write("Drww!"),nl. 
init():-firstmove().
firstmove():-nl,write("Enter Your First Move|: "),read(X),
		(
		(X=1 -> X1 = ['H',2,3,4,'C',6,7,8,9],draw(X1),secondmove1());
		(X=2 -> X1 = [1,'H',3,4,'C',6,7,8,9],draw(X1),secondmove2());
		(X=3 -> X1 = [1,2,'H',4,'C',6,7,8,9],draw(X1),secondmove3());
		(X=4 -> X1 = [1,2,3,'H','C',6,7,8,9],draw(X1),secondmove4()); 
		(X=5 -> X1 = ['C',2,3,4,'H',6,7,8,9],draw(X1),secondmove5());
		(X=6 -> X1 = [1,2,3,4,'C','H',7,8,9],draw(X1),secondmove6());
		(X=7 -> X1 = [1,2,3,4,'C',6,'H',8,9],draw(X1),secondmove7());
		(X=8 -> X1 = [1,2,3,4,'C',6,7,'H',9],draw(X1),secondmove8());
		(X=9 -> X1 = [1,2,3,4,'C',6,7,8,'H'],draw(X1),secondmove9())
		).
secondmove1():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=1);(X=5)) -> write("Wrong Move ! (-_-)"),nl,secondmove1());
		(X=2 -> X1 = ['H','H','C',4,'C',6,7,8,9],draw(X1),thirdmove12());
		(X=3 -> X1 = ['H','C','H',4,'C',6,7,8,9],draw(X1),thirdmove13());
		(X=4 -> X1 = ['H',2,3,'H','C',6,'C',8,9],draw(X1),thirdmove14());
		(X=6 -> X1 = ['H','C',3,4,'C','H',7,8,9],draw(X1),thirdmove16());
		(X=7 -> X1 = ['H',2,3,'C','C',6,'H',8,9],draw(X1),thirdmove17());
		(X=8 -> X1 = ['H',2,3,4,'C',6,'C','H',9],draw(X1),thirdmove18());
		(X=9 -> X1 = ['H',2,3,4,'C',6,7,'C','H'],draw(X1),thirdmove19())
		).
thirdmove12():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5)) -> write("Wrong Move ! (-_-)"),nl,thirdmove12());	
		(X=4 -> X1 = ['H','H','C','H','C',6,'C',8,9],draw(X1),gameover2());
		(X=6 -> X1 = ['H','H','C',4,'C','H','C',8,9],draw(X1),gameover2());
		(X=7 -> X1 = ['H','H','C','C','C',6,'H',8,9],draw(X1),fourthmove127());
		(X=8 -> X1 = ['H','H','C',4,'C',6,'C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H','H','C',4,'C',6,'C',8,'H'],draw(X1),gameover2())
		).
fourthmove127():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove127());
		(X=6 -> X1 = ['H','H','C','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=8 -> X1 = ['H','H','C','C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H','H','C','C','C','C','H',8,'H'],draw(X1),gameover2())
		).
thirdmove13():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5)) -> write("Wrong Move ! (-_-)"),nl,thirdmove13());
		(X=4 -> X1 = ['H','C','H','H','C',6,7,'C',9],draw(X1),gameover2());
		(X=6 -> X1 = ['H','C','H',4,'C','H',7,'C',9],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C','H',4,'C',6,'H','C',9],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C','H',4,'C',6,'C','H',9],draw(X1),fourthmove138());
		(X=9 -> X1 = ['H','C','H',4,'C',6,7,'C','H'],draw(X1),gameover2()) 
		).
fourthmove138():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=8);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove138());
		(X=4 -> X1 = ['H','C','H','H','C','C','C','H',9],draw(X1),gameover3());
		(X=6 -> X1 = ['H','C','H','C','C','H','C','H',9],draw(X1),gameover3());
		(X=9 -> X1 = ['H','C','H',4,'C','C','C','H','H'],draw(X1),gameover3())
		).
			
thirdmove14():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,thirdmove14());
		(X=2 -> X1 = ['H','H','C','H','C',6,'C',8,9],draw(X1),gameover2());
		(X=3 -> X1 = ['H','C','H','H','C',6,'C',8,9],draw(X1),fourthmove143());
		(X=6 -> X1 = ['H',2,'C','H','C','H','C',8,9],draw(X1),gameover2());
		(X=8 -> X1 = ['H',2,'C','H','C',6,'C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H',2,'C','H','C',6,'C',8,'H'],draw(X1),gameover2())
		).
fourthmove143():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove143());
		(X=6 -> X1 = ['H','C','H','H','C','H','C','C',9],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C','H','H','C',6,'C','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = ['H','C','H','H','C',6,'C','C','H'],draw(X1),gameover2())
		).
thirdmove16():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=6)) -> write("Wrong Move ! (-_-)"),nl,thirdmove16());
		(X=3 -> X1 = ['H','C','H',4,'C','H',7,'C',9],draw(X1),gameover2());
		(X=4 -> X1 = ['H','C',3,'H','C','H',7,'C',9],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C',3,4,'C','H','H','C',9],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C',3,4,'C','H','C','H',9],draw(X1),fourthmove168());
		(X=9 -> X1 = ['H','C',3,4,'C','H',7,'C','H'],draw(X1),gameover2())
		).
fourthmove168():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=6);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove168());
		(X=3 -> X1 = ['H','C','H',4,'C','H','C','H','C'],draw(X1),gameover3());
		(X=4 -> X1 = ['H','C','C','H','C','H','C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H','C','C',4,'C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove17():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,thirdmove17());
		(X=2 -> X1 = ['H','H',3,'C','C','C','H',8,9],draw(X1),gameover2());
		(X=3 -> X1 = ['H',2,'H','C','C','C','H',8,9],draw(X1),gameover2());
		(X=6 -> X1 = ['H','C',3,'C','C','H','H',8,9],draw(X1),fourthmove176());
		(X=8 -> X1 = ['H',2,3,'C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H',2,3,'C','C','C','H',8,'H'],draw(X1),gameover2())
		).
fourthmove176():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=4);(X=5);(X=6);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove176());
		(X=3 -> X1 = ['H','C','H','C','C','H','H','C',9],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C',3,'C','C','H','H','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = ['H','C',3,'C','C','H','H','C','H'],draw(X1),gameover2())
		).
thirdmove18():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,thirdmove18());
		(X=2 -> X1 = ['H','H','C',4,'C',6,'C','H',9],draw(X1),gameover2());
		(X=4 -> X1 = ['H',2,'C','H','C',6,'C','H',9],draw(X1),gameover2());
		(X=3 -> X1 = ['H','C','H',4,'C',6,'C','H',9],draw(X1),fourthmove183());
		(X=6 -> X1 = ['H',2,'C',4,'C','H','C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H',2,'C',4,'C',6,'C','H','H'],draw(X1),gameover2())
		).
fourthmove183():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove183());
		(X=4 -> X1 = ['H','C','H','H','C',6,'C','H','C'],draw(X1),gameover3());
		(X=6 -> X1 = ['H','C','H',4,'C','H','C','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = ['H','C','H',4,'C','C','C','H','H'],draw(X1),gameover3())
		).
thirdmove19():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=5);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,thirdmove19()); 
		(X=2 -> X1 = ['H','H','C',4,'C',6,7,'C','H'],draw(X1),fourthmove192());
		(X=3 -> X1 = ['H','C','H',4,'C',6,7,'C','H'],draw(X1),gameover2());
		(X=4 -> X1 = ['H','C',3,'H','C',6,7,'C','H'],draw(X1),gameover2());
		(X=6 -> X1 = ['H','C',3,4,'C','H',7,'C','H'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C',3,4,'C',6,'H','C','H'],draw(X1),gameover2())
		). 
fourthmove192():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove192());
		(X=4 -> X1 = ['H','H','C','H','C',6,'C','C','H'],draw(X1),gameover2());
		(X=6 -> X1 = ['H','H','C',4,'C','H','C','C','H'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','H','C','C','C',6,'H','C','H'],draw(X1),gameover3())
		).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

			
		
		
		


secondmove2():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=2);(X=5)) -> write("Wrong Move ! (-_-)"),nl,secondmove2());
		(X=1 -> X1 = ['H','H','C',4,'C',6,7,8,9],draw(X1),thirdmove21());
		(X=3 -> X1 = ['C','H','H',4,'C',6,7,8,9],draw(X1),thirdmove23());
		(X=4 -> X1 = ['C','H',3,'H','C',6,7,8,9],draw(X1),thirdmove24());
		(X=6 -> X1 = [1,'H',3,4,'C','H',7,8,'C'],draw(X1),thirdmove26());
		(X=7 -> X1 = ['C','H',3,4,'C',6,'H',8,9],draw(X1),thirdmove27());
		(X=8 -> X1 = [1,'H',3,4,'C',6,7,'H','C'],draw(X1),thirdmove28());
		(X=9 -> X1 = [1,'H',3,'C','C',6,7,8,'H'],draw(X1),thirdmove29())
		).
thirdmove21():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5)) -> write("Wrong Move ! (-_-)"),nl,thirdmove21());
		(X=4 -> X1 = ['H','H','C','H','C',6,'C',8,9],draw(X1),gameover2());
		(X=6 -> X1 = ['H','H','C',4,'C','H','C',8,9],draw(X1),gameover2());
		(X=7 -> X1 = ['H','H','C','C','C',6,'H',8,9],draw(X1),fourthmove217());
		(X=8 -> X1 = ['H','H','C',4,'C',6,'C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H','H','C',4,'C',6,'C',8,'H'],draw(X1),gameover2())
		).
fourthmove217():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove217());
		(X=6 -> X1 = ['H','H','C','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=8 -> X1 = ['H','H','C','C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H','H','C','C','C','C','H',8,'H'],draw(X1),gameover2())
		).
thirdmove23():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5)) -> write("Wrong Move ! (-_-)"),nl,thirdmove23());
		(X=4 -> X1 = ['C','H','H','H','C',6,7,8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H','H',4,'C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H','H',4,'C',6,'H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H','H',4,'C',6,7,'H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C','H','H',4,'C','C',7,8,'H'],draw(X1),fourthmove239())
		).
fourthmove239():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove239());
		(X=4 -> X1 = ['C','H','H','H','C','C',7,'C','H'],draw(X1),gameover3());
		(X=7 -> X1 = ['C','H','H','C','C','C','H',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H','H','C','C','C',7,'H','H'],draw(X1),gameover2())
		).
thirdmove24():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=4);(X=5)) -> write("Wrong Move ! (-_-)"),nl,thirdmove24());
		(X=3 -> X1 = ['C','H','H','H','C',6,7,8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H',3,'H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H',3,'H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H',3,'H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C','H','C','H','C',6,7,8,'H'],draw(X1),fourthmove249())
		).
fourthmove249():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=4);(X=5);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove249());
		(X=6 -> X1 = ['C','H','C','H','C','H','C',8,'H'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H','C','H','C',6,'H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C','H','C','H','C',6,'C','H','H'],draw(X1),gameover2())
		).
thirdmove26():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=2);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,thirdmove26());
		(X=1 -> X1 = ['H','H','C',4,'C','H',7,8,'C'],draw(X1),fourthmove261());
		(X=3 -> X1 = ['C','H','H',4,'C','H',7,8,'C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C','H',3,'H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H',3,4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H',3,4,'C','H',7,'H','C'],draw(X1),gameover2())
		).
fourthmove261():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove261());
		(X=4 -> X1 = ['H','H','C','H','C','H','C',8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','H','C','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=8 -> X1 = ['H','H','C',4,'C','H','C','H','C'],draw(X1),gameover2())
		).
thirdmove27():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,thirdmove27());
		(X=3 -> X1 = ['C','H','H',4,'C',6,'H',8,'C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C','H',3,'H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H',3,4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H',3,4,'C',6,'H','C','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C','H',3,4,'C',6,'H','C','H'],draw(X1),fourthmove279())
		).
fourthmove279():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove279());
		(X=3 -> X1 = ['C','H','H',4,'C','C','H','C','H'],draw(X1),gameover3());
		(X=4 -> X1 = ['C','H',3,'H','C','C','H','C','H'],draw(X1),gameover3());
		(X=6 -> X1 = ['C','H','C',4,'C','H','H','C','H'],draw(X1),gameover3())
		).
thirdmove28():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=2);(X=5);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,thirdmove28());
		(X=1 -> X1 = ['H','H','C',4,'C',6,7,'H','C'],draw(X1),fourthmove281());
		(X=3 -> X1 = ['C','H','H',4,'C',6,7,'H','C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C','H',3,'H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H',3,4,'C','H',7,'H','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H',3,4,'C',6,'H','H','C'],draw(X1),gameover2())
		).
fourthmove281():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove281());
		(X=4 -> X1 = ['H','H','C','H','C',6,'C','H','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['H','H','C',4,'C','H','C','H','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','H','C','C','C',6,'H','H','C'],draw(X1),gameover3())
		).
thirdmove29():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=2);(X=4);(X=5);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove28());
		(X=1 -> X1 = ['H','H',3,'C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=3 -> X1 = [1,'H','H','C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=6 -> X1 = [1,'H','C','C','C','H',7,8,'H'],draw(X1),fourthmove296());
		(X=7 -> X1 = [1,'H',3,'C','C','C','C',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = [1,'H',3,'C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove296():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=2);(X=3);(X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove296());
		(X=1 -> X1 = ['H','H','C','C','C','H','C',8,'H'],draw(X1),gameover2());
		(X=7 -> X1 = [1,'H','C','C','C','H','H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = [1,'H','C','C','C','H','C','H','H'],draw(X1),gameover2())
		).
		




secondmove3():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=3);(X=5)) -> write("Wrong Move ! (-_-)"),nl,secondmove3());
		(X=1 -> X1 = ['H','C','H',4,'C',6,7,8,9],draw(X1),thirdmove31());
		(X=2 -> X1 = ['C','H','H',4,'C',6,7,8,9],draw(X1),thirdmove32());
		(X=4 -> X1 = ['C',2,'H','H','C',6,7,8,9],draw(X1),thirdmove34());
		(X=6 -> X1 = [1,2,'H',4,'C','H',7,8,'C'],draw(X1),thirdmove36());
		(X=7 -> X1 = [1,2,'H',4,'C',6,'H','C',9],draw(X1),thirdmove37());
		(X=8 -> X1 = [1,2,'H',4,'C','C',7,'H',9],draw(X1),thirdmove38());
		(X=9 -> X1 = [1,2,'H',4,'C','C',7,8,'H'],draw(X1),thirdmove39())
		).
thirdmove31():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5)) -> write("Wrong Move ! (-_-) "),nl,thirdmove31());
		(X=4 -> X1 = ['H','C','H','H','C',6,7,'C',9],draw(X1),gameover2());
		(X=6 -> X1 = ['H','C','H',4,'C','H',7,'C',9],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C','H',4,'C',6,'H','C',9],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C','H',4,'C',6,7,'H','C'],draw(X1),fourthmove318());
		(X=9 -> X1 = ['H','C','H',4,'C',6,7,'C','H'],draw(X1),gameover2())
		).
fourthmove318():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove318());
		(X=4 -> X1 = ['H','C','H','H','C',6,'C','H','C'],draw(X1),gameover3());
		(X=6 -> X1 = ['H','C','H','C','C','H',7,'H','C'],draw(X1),gameover3());
		(X=7 -> X1 = ['H','C','H','C','C',6,'H','H','C'],draw(X1),gameover3())
		).
thirdmove32():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5)) -> write("Wrong Move ! (-_-) "),nl,thirdmove32());
		(X=4 -> X1 = ['C','H','H','H','C',6,7,8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H','H',4,'C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H','H',4,'C',6,'H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H','H',4,'C',6,7,'H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C','H','H',4,'C','C',7,8,'H'],draw(X1),fourthmove329())
		).
fourthmove329():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove329());
		(X=4 -> X1 = ['C','H','H','H','C','C','C',8,'H'],draw(X1),gameover3());
		(X=7 -> X1 = ['C','H','H','C','C','C','H',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H','H','C','C','C',7,'H','H'],draw(X1),gameover2())
		).
thirdmove34():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5)) -> write("Wrong Move ! (-_-) "),nl,thirdmove34());
		(X=2 -> X1 = ['C','H','H','H','C',6,7,8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C',2,'H','H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,'H','H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,'H','H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,'H','H','C','C',7,8,'H'],draw(X1),fourthmove349())
		).
fourthmove349():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove349());
		(X=2 -> X1 = ['C','H','H','H','C','C',7,'C','H'],draw(X1),gameover3());
		(X=7 -> X1 = ['C',2,'H','H','C','C','H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).
thirdmove36():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove36());
		(X=1 -> X1 = ['H','C','H',4,'C','H',7,8,'C'],draw(X1),fourthmove361());
		(X=2 -> X1 = ['C','H','H',4,'C','H',7,8,'C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,'H','H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,'H',4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,'H',4,'C','H',7,'H','C'],draw(X1),gameover2())
		).
fourthmove361():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove361());
		(X=4 -> X1 = ['H','C','H','H','C','H',7,'C','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C','H',4,'C','H','H','C','C'],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C','H',4,'C','H','C','H','C'],draw(X1),gameover3())
		).
thirdmove37():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove37());
		(X=1 -> X1 = ['H','C','H',4,'C',6,'H','C',9],draw(X1),gameover2());
		(X=2 -> X1 = ['C','H','H',4,'C',6,'H','C',9],draw(X1),fourthmove372());
		(X=4 -> X1 = [1,'C','H','H','C',6,'H','C',9],draw(X1),gameover2());
		(X=6 -> X1 = [1,'C','H',4,'C','H','H','C',9],draw(X1),gameover2());
		(X=9 -> X1 = [1,'C','H',4,'C',6,'H','C','H'],draw(X1),gameover2())
		).
fourthmove372():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove372());
		(X=4 -> X1 = ['C','H','H','H','C',6,'H','C','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H','H',4,'C','H','H','C','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C','H','H',4,'C','C','H','C','H'],draw(X1),gameover3())
		).
thirdmove38():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove38());
		(X=1 -> X1 = ['H',2,'H','C','C','C',7,'H',9],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','H','C','C','C',7,'H',9],draw(X1),gameover2());
		(X=4 -> X1 = [1,2,'H','H','C','C','C','H',9],draw(X1),fourthmove384());
		(X=7 -> X1 = [1,2,'H','C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = [1,2,'H','C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove384():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=4);(X=5);(X=6);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove384());
		(X=1 -> X1 = ['H','C','H','H','C','C','C','H',9],draw(X1),gameover3());
		(X=2 -> X1 = ['C','H','H','H','C','C','C','H',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).
thirdmove39():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove39());
		(X=1 -> X1 = ['H',2,'H','C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','H','C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,'H','H','C','C',7,8,'H'],draw(X1),fourthmove394());
		(X=7 -> X1 = [1,2,'H','C','C','C','H',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = [1,2,'H','C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove394():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove394());
		(X=2 -> X1 = ['C','H','H','H','C','C',7,'C','H'],draw(X1),gameover3());
		(X=7 -> X1 = ['C',2,'H','H','C','C','H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).








secondmove4():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=4);(X=5)) -> write("Wrong Move ! (-_-)"),nl,secondmove4());
		(X=1 -> X1 = ['H',2,3,'H','C',6,'C',8,9],draw(X1),thirdmove41());
		(X=2 -> X1 = ['C','H',3,'H','C',6,7,8,9],draw(X1),thirdmove42());
		(X=3 -> X1 = ['C',2,'H','H','C',6,7,8,9],draw(X1),thirdmove43());
		(X=6 -> X1 = ['C',2,3,'H','C','H',7,8,9],draw(X1),thirdmove46());
		(X=7 -> X1 = ['C',2,3,'H','C',6,'H',8,9],draw(X1),thirdmove47());
		(X=8 -> X1 = ['C',2,3,'H','C',6,7,'H',9],draw(X1),thirdmove48());
		(X=9 -> X1 = [1,2,3,'H','C',6,'C',8,'H'],draw(X1),thirdmove49())
		).
thirdmove41():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove41());
		(X=2 -> X1 = ['H','H','C','H','C',6,'C',8,9],draw(X1),gameover2());
		(X=3 -> X1 = ['H','C','H','H','C',6,'C',8,9],draw(X1),fourthmove413());
		(X=6 -> X1 = ['H',2,'C','H','C','H','C',8,9],draw(X1),gameover2());
		(X=8 -> X1 = ['H',2,'C','H','C',6,'C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H',2,'C','H','C',6,'C',8,'H'],draw(X1),gameover2())
		).
fourthmove413():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove413());
		(X=6 -> X1 = ['H','C','H','H','C','H','C','C',9],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C','H','H','C',6,'C','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = ['H','C','H','H','C',6,'C','C','H'],draw(X1),gameover2())
		).
thirdmove42():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=4);(X=5)) -> write("Wrong Move ! (-_-) "),nl,thirdmove42());
		(X=3 -> X1 = ['C','H','H','H','C',6,7,8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H',3,'H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H',3,'H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H',3,'H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C','H','C','H','C',6,7,8,'H'],draw(X1),fourthmove429())
		).
fourthmove429():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=4);(X=5);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove429());
		(X=6 -> X1 = ['C','H','C','H','C','H','C',8,'H'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H','C','H','C',6,'H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C','H','C','H','C',6,'C','H','H'],draw(X1),gameover2())
		).
thirdmove43():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5)) -> write("Wrong Move ! (-_-) "),nl,thirdmove43());
		(X=2 -> X1 = ['C','H','H','H','C',6,7,8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C',2,'H','H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,'H','H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,'H','H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,'H','H','C','C',7,8,'H'],draw(X1),fourthmove439())
		).
fourthmove439():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove439());
		(X=2 -> X1 = ['C','H','H','H','C','C',7,'C','H'],draw(X1),gameover3());
		(X=7 -> X1 = ['C',2,'H','H','C','C','H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).
thirdmove46():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6)) -> write("Wrong Move ! (-_-) "),nl,thirdmove46());
		(X=2 -> X1 = ['C','H',3,'H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,3,'H','C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,3,'H','C','H',7,'H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,'C','H','C','H',7,8,'H'],draw(X1),fourthmove469())
		).
fourthmove469():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove469());
		(X=2 -> X1 = ['C','H','C','H','C','H','C',8,'H'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,'C','H','C','H','H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'C','H','C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove47():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove47());
		(X=2 -> X1 = ['C','H',3,'H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C',2,3,'H','C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,3,'H','C',6,'H','H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,3,'H','C',6,'H','C','H'],draw(X1),fourthmove479())
		).
fourthmove479():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove479());
		(X=2 -> X1 = ['C','H','C','H','C',6,'H','C','H'],draw(X1),gameover3());
		(X=3 -> X1 = ['C','C','H','H','C',6,'H','C','H'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','C',3,'H','C','H','H','C','H'],draw(X1),gameover2())
		).
thirdmove48():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove48());
		(X=2 -> X1 = ['C','H',3,'H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C',2,3,'H','C','H',7,'H','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,3,'H','C',6,'H','H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,3,'H','C',6,'C','H','H'],draw(X1),fourthmove489())
		).
fourthmove489():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove489());
		(X=2 -> X1 = ['C','H','C','H','C',6,'C','H','H'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3());
		(X=6 -> X1 = ['C',2,'C','H','C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove49():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=4);(X=5);(X=7);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove49());
		(X=1 -> X1 = ['H',2,'C','H','C',6,'C',8,'H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','C','H','C',6,'C',8,'H'],draw(X1),gameover2());
		(X=3 -> X1 = [1,2,'H','H','C','C','C',8,'H'],draw(X1),fourthmove493());
		(X=6 -> X1 = [1,2,'C','H','C','H','C',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = [1,2,'C','H','C',6,'C','H','H'],draw(X1),gameover2())
		).
fourthmove493():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove493());
		(X=1 -> X1 = ['H','C','H','H','C','C','C',8,'H'],draw(X1),gameover3());
		(X=2 -> X1 = ['C','H','H','H','C','C','C',8,'H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).




secondmove5():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=1);(X=5)) -> write("Wrong Move ! (-_-)"),nl,secondmove5());
		(X=2 -> X1 = ['C','H',3,4,'H',6,7,'C',9],draw(X1),thirdmove52());
		(X=3 -> X1 = ['C',2,'H',4,'H',6,'C',8,9],draw(X1),thirdmove53());
		(X=4 -> X1 = ['C',2,3,'H','H','C',7,8,9],draw(X1),thirdmove54());
		(X=6 -> X1 = ['C',2,3,'C','H','H',7,8,9],draw(X1),thirdmove56());
		(X=7 -> X1 = ['C',2,'C',4,'H',6,'H',8,9],draw(X1),thirdmove57());
		(X=8 -> X1 = ['C','C',3,4,'H',6,7,'H',9],draw(X1),thirdmove58());
		(X=9 -> X1 = ['C',2,3,4,'H',6,'C',8,'H'],draw(X1),thirdmove59())
		).
thirdmove52():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove52());
		(X=3 -> X1 = ['C','H','H',4,'H',6,'C','C',9],draw(X1),fourthmove523());
		(X=4 -> X1 = ['C','H',3,'H','H','C',7,'C',9],draw(X1),fourthmove524());
		(X=6 -> X1 = ['C','H',3,'C','H','H',7,'C',9],draw(X1),fourthmove526());
		(X=7 -> X1 = ['C','H','C',4,'H',6,'H','C',9],draw(X1),fourthmove527());
		(X=9 -> X1 = ['C','H','C',4,'H',6,7,'C','H'],draw(X1),fourthmove529())
		).
fourthmove523():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove523());
		(X=4 -> X1 = ['C','H','H','H','H',6,'C','C','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','H','H','C','H','H','C','C',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C','H','H','C','H',6,'C','C','H'],draw(X1),gameover2())
		).
fourthmove524():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=4);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove524());
		(X=3 -> X1 = ['C','H','H','H','H','C','C','C',9],draw(X1),gameover3());
		(X=7 -> X1 = ['C','H','C','H','H','C','H','C',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C','H','C','H','H','C',7,'C','H'],draw(X1),gameover3())
		).
fourthmove526():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=4);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove526());
		(X=3 -> X1 = ['C','H','H','C','H','H','C','C',9],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H','C','C','H','H','H','C',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C','H',3,'C','H','H','C','C','H'],draw(X1),gameover2())
		).
fourthmove527():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove527());
		(X=4 -> X1 = ['C','H','C','H','H','C','H','C',9],draw(X1),gameover3());
		(X=6 -> X1 = ['C','H','C','C','H','H','H','C',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C','H','C',4,'H','C','H','C','H'],draw(X1),gameover3())
		).
fourthmove529():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove529());
		(X=4 -> X1 = ['C','H','C','H','H','C',7,'C','H'],draw(X1),gameover3());
		(X=6 -> X1 = ['C','H','C','C','H','H',7,'C','H'],draw(X1),gameover3());
		(X=7 -> X1 = ['C','H','C',4,'H','C','H','C','H'],draw(X1),gameover3())
		).
thirdmove53():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=3);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove53());
		(X=2 -> X1 = ['C','H','H','C','H',6,'C',8,9],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,'H','H','H','C','C',8,9],draw(X1),fourthmove534());
		(X=6 -> X1 = ['C',2,'H','C','H','H','C',8,9],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,'H','C','H',6,'C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,'H','C','H',6,'C',8,'H'],draw(X1),gameover2())
		).
fourthmove534():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove534());
		(X=2 -> X1 = ['C','H','H','H','H','C','C','C',9],draw(X1),gameover3());
		(X=8 -> X1 = ['C','C','H','H','H','C','C','H',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C',2,'H','H','H','C','C','C','H'],draw(X1),gameover3())
		).
thirdmove54():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6)) -> write("Wrong Move ! (-_-) "),nl,thirdmove54());
		(X=2 -> X1 = ['C','H',3,'H','H','C',7,'C',9],draw(X1),fourthmove542());
		(X=3 -> X1 = ['C',2,'H','H','H','C','C',8,9],draw(X1),fourthmove543());
		(X=7 -> X1 = ['C',2,'C','H','H','C','H',8,9],draw(X1),fourthmove547());
		(X=8 -> X1 = ['C','C',3,'H','H','C',7,'H',9],draw(X1),fourthmove548());
		(X=9 -> X1 = ['C',2,3,'H','H','C','C',8,'H'],draw(X1),fourthmove549())
		).
fourthmove542():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=4);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove542());
		(X=3 -> X1 = ['C','H','H','H','H','C','C','C',9],draw(X1),gameover3());
		(X=7 -> X1 = ['C','H','C','H','H','C','H','C',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C','H',3,'H','H','C','C','C','H'],draw(X1),gameover3())
		).
fourthmove543():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove543());
		(X=2 -> X1 = ['C','H','H','H','H','C','C','C',9],draw(X1),gameover3());
		(X=8 -> X1 = ['C','C','H','H','H','C','C','H',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C','C','H','H','H','C','C',8,'H'],draw(X1),gameover3())
		).
fourthmove547():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove547());
		(X=2 -> X1 = ['C','H','C','H','H','C','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,'C','H','H','C','H','H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C','C','C','H','H','C','H',8,'H'],draw(X1),gameover2())
		).
fourthmove548():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=4);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove548());
		(X=3 -> X1 = ['C','C','H','H','H','C','C','H',9],draw(X1),gameover3());
		(X=7 -> X1 = ['C','C','C','H','H','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C','C','C','H','H','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove549():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove549());
		(X=2 -> X1 = ['C','H','C','H','H','C','C',8,'H'],draw(X1),gameover2());
		(X=3 -> X1 = ['C','C','H','H','H','C','C',8,'H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'C','H','H','C','C','H','H'],draw(X1),gameover2())
		).
thirdmove56():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6)) -> write("Wrong Move ! (-_-) "),nl,thirdmove56());
		(X=2 -> X1 = ['C','H',3,'C','H','H','C',8,9],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','C','H','H','C',8,9],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,'C','C','H','H','H',8,9],draw(X1),fourthmove567());
		(X=8 -> X1 = ['C',2,3,'C','H','H','C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,3,'C','H','H','C',8,'H'],draw(X1),gameover2())
		).
fourthmove567():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove567());
		(X=2 -> X1 = ['C','H','C','C','H','H','H','C',9],draw(X1),gameover3());
		(X=8 -> X1 = ['C','C','C','C','H','H','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C','C','C','C','H','H','H',8,'H'],draw(X1),gameover2())
		).
thirdmove57():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=3);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove57());
		(X=2 -> X1 = ['C','H','C',4,'H',6,'H','C',9],draw(X1),fourthmove572());
		(X=4 -> X1 = ['C','C','C','H','H',6,'H',8,9],draw(X1),gameover2());
		(X=6 -> X1 = ['C','C','C',4,'H','H','H',8,9],draw(X1),gameover2());
		(X=8 -> X1 = ['C','C','C',4,'H',6,'H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C','C','C',4,'H',6,'H',8,'H'],draw(X1),gameover2())
		).
fourthmove572():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove572());
		(X=4 -> X1 = ['C','H','C','H','H','C','H','C',9],draw(X1),gameover3());
		(X=6 -> X1 = ['C','H','C','C','H','H','H','C',9],draw(X1),gameover3());
		(X=9 -> X1 = ['C','H','C',4,'H','C','H','C','H'],draw(X1),gameover3())
		).
thirdmove58():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove58());
		(X=3 -> X1 = ['C','C','H',4,'H',6,'C','H',9],draw(X1),fourthmove583());
		(X=4 -> X1 = ['C','C','C','H','H',6,7,'H',9],draw(X1),gameover2());
		(X=6 -> X1 = ['C','C','C',4,'H','H',7,'H',9],draw(X1),gameover2());
		(X=7 -> X1 = ['C','C','C',4,'H',6,'H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C','C','C',4,'H',6,7,'H','H'],draw(X1),gameover2())
		).
fourthmove583():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=7);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove583());
		(X=4 -> X1 = ['C','C','H','H','H','C','C','H',9],draw(X1),gameover3());
		(X=6 -> X1 = ['C','C','H','C','H','H','C','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['C','C','H','C','H',6,'C','H','H'],draw(X1),gameover2())
		).
thirdmove59():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=5);(X=7);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove59());
		(X=2 -> X1 = ['C','H',3,'C','H',6,'C',8,'H'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','C','H',6,'C',8,'H'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,3,'H','H','C','C',8,'H'],draw(X1),fourthmove594());
		(X=6 -> X1 = ['C',2,3,'C','H','H','C',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,3,'C','H',6,'C','H','H'],draw(X1),gameover2())
		).
fourthmove594():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove594());
		(X=2 -> X1 = ['C','H',3,'H','H','C','C','C','H'],draw(X1),gameover3());
		(X=3 -> X1 = ['C','C','H','H','H','C','C',8,'H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C','C',3,'H','H','C','C','H','H'],draw(X1),gameover3())
		).









secondmove6():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=5);(X=6)) -> write("Wrong Move ! (-_-)"),nl,secondmove6());
		(X=1 -> X1 = ['H','C',3,4,'C','H',7,8,9],draw(X1),thirdmove61());
		(X=2 -> X1 = [1,'H',3,4,'C','H',7,8,'C'],draw(X1),thirdmove62());
		(X=3 -> X1 = [1,2,'H',4,'C','H',7,8,'C'],draw(X1),thirdmove63());
		(X=4 -> X1 = [1,2,3,'H','C','H',7,8,'C'],draw(X1),thirdmove64());
		(X=7 -> X1 = [1,2,3,4,'C','H','H',8,'C'],draw(X1),thirdmove67());
		(X=8 -> X1 = [1,2,3,4,'C','H',7,'H','C'],draw(X1),thirdmove68());
		(X=9 -> X1 = [1,2,'C',4,'C','H',7,8,'H'],draw(X1),thirdmove69())
		).
thirdmove61():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=6)) -> write("Wrong Move ! (-_-) "),nl,thirdmove61());
		(X=3 -> X1 = ['H','C','H',4,'C','H',7,'C',9],draw(X1),gameover2());
		(X=4 -> X1 = ['H','C',3,'H','C','H',7,'C',9],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C',3,4,'C','H','H','C',9],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C',3,4,'C','H',7,'H','C'],draw(X1),fourthmove618());		
		(X=9 -> X1 = ['H','C',3,4,'C','H',7,'C','H'],draw(X1),gameover2())
		).
fourthmove618():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=6);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove618());
		(X=3 -> X1 = ['H','C','H','C','C','H',7,'H','C'],draw(X1),gameover3());
		(X=4 -> X1 = ['H','C',3,'H','C','H','C','H','C'],draw(X1),gameover3());
		(X=7 -> X1 = ['H','C',3,'C','C','H','H','H','C'],draw(X1),gameover3())
		).
thirdmove62():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=2);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove62());
		(X=1 -> X1 = ['H','H','C',4,'C','H',7,8,'C'],draw(X1),fourthmove621());
		(X=3 -> X1 = ['C','H','H',4,'C','H',7,8,'C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C','H',3,'H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C','H',3,4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C','H',3,4,'C','H',7,'H','C'],draw(X1),gameover2())
		).
fourthmove621():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove621());
		(X=4 -> X1 = ['H','H','C','H','C','H','C',8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','H','C','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=8 -> X1 = ['H','H','C',4,'C','H','C','H','C'],draw(X1),gameover2())
		).
thirdmove63():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove63());
		(X=1 -> X1 = ['H','C','H',4,'C','H',7,8,'C'],draw(X1),fourthmove631());
		(X=2 -> X1 = ['C','H','H',4,'C','H',7,8,'C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,'H','H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,'H',4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,'H',4,'C','H',7,'H','C'],draw(X1),gameover2())
		).
fourthmove631():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove631());
		(X=4 -> X1 = ['H','C','H','H','C','H',7,'C','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C','H',4,'C','H','H','C','C'],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C','H',4,'C','H','C','H','C'],draw(X1),gameover3())
		).
thirdmove64():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove64());
		(X=1 -> X1 = ['H',2,3,'H','C','H','C',8,'C'],draw(X1),fourthmove641());
		(X=2 -> X1 = ['C','H',3,'H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C','H',7,8,'C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,3,'H','C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,3,'H','C','H',7,'H','C'],draw(X1),gameover2())
		).
fourthmove641():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove641());
		(X=2 -> X1 = ['H','H','C','H','C','H','C',8,'C'],draw(X1),gameover2());
		(X=3 -> X1 = ['H','C','H','H','C','H','C',8,'C'],draw(X1),gameover3());
		(X=8 -> X1 = ['H',2,'C','H','C','H','C','H','C'],draw(X1),gameover2())
		).
thirdmove67():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove67());
		(X=1 -> X1 = ['H',2,3,'C','C','H','H',8,'C'],draw(X1),fourthmove671());
		(X=2 -> X1 = ['C','H',3,4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H',4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,3,'H','C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,3,4,'C','H','H','H','C'],draw(X1),gameover2())
		).
fourthmove671():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove671());
		(X=2 -> X1 = ['H','H','C','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=3 -> X1 = ['H','C','H','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=8 -> X1 = ['H','C',3,'C','C','H','H','H','C'],draw(X1),gameover3())
		).
thirdmove68():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=6);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove68());
		(X=1 -> X1 = ['H',2,3,4,'C','H','C','H','C'],draw(X1),fourthmove681());
		(X=2 -> X1 = ['C','H',3,4,'C','H',7,'H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H',4,'C','H',7,'H','C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,3,'H','C','H',7,'H','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,3,4,'C','H','H','H','C'],draw(X1),gameover2())
		).
fourthmove681():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=5);(X=6);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove681());
		(X=2 -> X1 = ['H','H','C',4,'C','H','C','H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['H','C','H',4,'C','H','C','H','C'],draw(X1),gameover3());
		(X=4 -> X1 = ['H',2,'C','H','C','H','C','H','C'],draw(X1),gameover2())
		).
thirdmove69():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=6);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove69());
		(X=1 -> X1 = ['H',2,'C',4,'C','H','C',8,'H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','C',4,'C','H','C',8,'H'],draw(X1),gameover2());
		(X=4 -> X1 = [1,2,'C','H','C','H','C',8,'H'],draw(X1),gameover2());
		(X=7 -> X1 = [1,2,'C',4,'C','H','H','C','H'],draw(X1),fourthmove697());
		(X=8 -> X1 = [1,2,'C',4,'C','H','C','H','H'],draw(X1),gameover2())
		).
fourthmove697():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove697());
		(X=1 -> X1 = ['H','C','C',4,'C','H','H','C','H'],draw(X1),gameover2());
		(X=2 -> X1 = ['C','H','C',4,'C','H','H','C','H'],draw(X1),gameover3());
		(X=4 -> X1 = [1,'C','C','H','C','H','H','C','H'],draw(X1),gameover2())
		).








secondmove7():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=5);(X=7)) -> write("Wrong Move ! (-_-)"),nl,secondmove7());
		(X=1 -> X1 = ['H',2,3,'C','C',6,'H',8,9],draw(X1),thirdmove71());
		(X=2 -> X1 = [1,'H',3,'C','C',6,'H',8,9],draw(X1),thirdmove72());
		(X=3 -> X1 = [1,2,'H','C','C',6,'H',8,9],draw(X1),thirdmove73());
		(X=4 -> X1 = ['C',2,3,'H','C',6,'H',8,9],draw(X1),thirdmove74());
		(X=6 -> X1 = [1,2,3,4,'C','H','H',8,'C'],draw(X1),thirdmove76());
		(X=8 -> X1 = [1,2,3,4,'C',6,'H','H','C'],draw(X1),thirdmove78());
		(X=9 -> X1 = [1,2,3,4,'C',6,'H','C','H'],draw(X1),thirdmove79())
		).
thirdmove71():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove71());
		(X=2 -> X1 = ['H','H',3,'C','C','C','H',8,9],draw(X1),gameover2());
		(X=3 -> X1 = ['H',2,'H','C','C','C','H',8,9],draw(X1),gameover2());
		(X=6 -> X1 = ['H',2,'H','C','C','H','H',8,9],draw(X1),fourthmove716());
		(X=8 -> X1 = ['H',2,3,'C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H',2,3,'C','C','C','H',8,'H'],draw(X1),gameover2())
		).
fourthmove716():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove716());
		(X=2 -> X1 = ['H','H','H','C','C','H','H','C',9],draw(X1),gameover3());
		(X=8 -> X1 = ['H',2,'H','C','C','H','H','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = ['H',2,'H','C','C','H','H','C','H'],draw(X1),gameover3())
		).
thirdmove72():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=2);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove72());
		(X=1 -> X1 = ['H','H',3,'C','C','C','H',8,9],draw(X1),gameover2());
		(X=3 -> X1 = [1,'H','H','C','C','C','H',8,9],draw(X1),gameover2());
		(X=6 -> X1 = [1,'H','C','C','C','H','H',8,9],draw(X1),fourthmove726());
		(X=8 -> X1 = [1,'H',3,'C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = [1,'H',3,'C','C','C','H',8,'H'],draw(X1),gameover2())
		).
fourthmove726():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=2);(X=3);(X=4);(X=5);(X=6);(X=7)) -> write("Wrong Move ! (-_-)"),nl,fourthmove726());
		(X=1 -> X1 = ['H','H','C','C','C','H','H','C',9],draw(X1),gameover3());
		(X=8 -> X1 = [1,'H','C','C','C','H','H','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = [1,'H','C','C','C','H','H','C','H'],draw(X1),gameover3())
		).
thirdmove73():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove73());
		(X=1 -> X1 = ['H',2,'H','C','C','C','H',8,9],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','H','C','C','C','H',8,9],draw(X1),gameover2());
		(X=6 -> X1 = [1,2,'H','C','C','H','H',8,'C'],draw(X1),fourthmove736());
		(X=8 -> X1 = [1,2,'H','C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = [1,2,'H','C','C','C','H',8,'H'],draw(X1),gameover2())
		).
fourthmove736():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove736());
		(X=1 -> X1 = ['H','C','H','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=2 -> X1 = ['C','H','H','C','C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,'H','C','C','H','H','H','C'],draw(X1),gameover2())
		).
thirdmove74():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7)) -> write("Wrong Move ! (-_-) "),nl,thirdmove74());
		(X=2 -> X1 = ['C','H',3,'H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C',6,'H',8,'C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C',2,3,'H','C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,3,'H','C',6,'H','H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,3,'H','C',6,'H','C','H'],draw(X1),fourthmove749())
		).
fourthmove749():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove749());
		(X=2 -> X1 = ['C','H','C','H','C',6,'H','C','H'],draw(X1),gameover3());
		(X=3 -> X1 = ['C','C','H','H','C',6,'H','C','H'],draw(X1),gameover2());
		(X=6 -> X1 = ['C','C',3,'H','C','H','H','C','H'],draw(X1),gameover2())
		).
thirdmove76():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove76());
		(X=1 -> X1 = ['H',2,3,'C','C','H','H',8,'C'],draw(X1),fourthmove761());
		(X=2 -> X1 = ['C','H',3,4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H',4,'C','H','H',8,'C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,3,'H','C','H','H',8,'C'],draw(X1),gameover2());
		(X=8 -> X1 = ['C',2,3,4,'C','H','H','H','C'],draw(X1),gameover2())
		).
fourthmove761():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove761());
		(X=2 -> X1 = ['H','H','C','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=3 -> X1 = ['H','C','H','C','C','H','H',8,'C'],draw(X1),gameover3());
		(X=8 -> X1 = ['H','C',3,'C','C','H','H','H','C'],draw(X1),gameover3())
		).
thirdmove78():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove78());
		(X=1 -> X1 = ['H',2,3,'C','C',6,'H','H','C'],draw(X1),fourthmove781());
		(X=2 -> X1 = ['C','H',3,4,'C',6,'H','H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H',4,'C',6,'H','H','C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,3,'H','C',6,'H','H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,3,4,'C','H','H','H','C'],draw(X1),gameover2())
		).
fourthmove781():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove781());
		(X=2 -> X1 = ['H','H',3,'C','C','C','H','H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['H',2,'H','C','C','C','H','H','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['H',2,'C','C','C','H','H','H','C'],draw(X1),gameover3())
		).
thirdmove79():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove79());
		(X=1 -> X1 = ['H','C',3,4,'C',6,'H','C','H'],draw(X1),gameover2());
		(X=2 -> X1 = ['C','H',3,4,'C',6,'H','C','H'],draw(X1),fourthmove792());
		(X=3 -> X1 = [1,'C','H',4,'C',6,'H','C','H'],draw(X1),gameover2());
		(X=4 -> X1 = [1,'C',3,'H','C',6,'H','C','H'],draw(X1),gameover2());
		(X=6 -> X1 = [1,'C',3,4,'C','H','H','C','H'],draw(X1),gameover2())
		).
fourthmove792():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove792());
		(X=3 -> X1 = ['C','H','H',4,'C','C','H','C','H'],draw(X1),gameover3());
		(X=4 -> X1 = ['C','H',3,'H','C','C','H','C','H'],draw(X1),gameover3());
		(X=6 -> X1 = ['C','H','C',4,'C','H','H','C','H'],draw(X1),gameover3())
		).








secondmove8():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=5);(X=8)) -> write("Wrong Move ! (-_-)"),nl,secondmove8());
		(X=1 -> X1 = ['H',2,3,'C','C',6,7,'H',9],draw(X1),thirdmove81());
		(X=2 -> X1 = [1,'H',3,'C','C',6,7,'H',9],draw(X1),thirdmove82());
		(X=3 -> X1 = [1,2,'H','C','C',6,7,'H',9],draw(X1),thirdmove83());
		(X=4 -> X1 = ['C',2,3,'H','C',6,7,'H',9],draw(X1),thirdmove84());
		(X=6 -> X1 = [1,2,'C',4,'C','H',7,'H',9],draw(X1),thirdmove86());
		(X=7 -> X1 = [1,2,3,4,'C',6,'H','H','C'],draw(X1),thirdmove87());
		(X=9 -> X1 = [1,2,3,4,'C',6,'C','H','H'],draw(X1),thirdmove89())
		).
thirdmove81():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove81());
		(X=2 -> X1 = ['H','H',3,'C','C','C',7,'H',9],draw(X1),gameover2());
		(X=3 -> X1 = ['H',2,'H','C','C','C',7,'H',9],draw(X1),gameover2());
		(X=6 -> X1 = ['H',2,'C','C','C','H',7,'H',9],draw(X1),fourthmove816());
		(X=7 -> X1 = ['H',2,3,'C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = ['H',2,3,'C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove816():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove816());
		(X=2 -> X1 = ['H','H','C','C','C','H','C','H',9],draw(X1),gameover2());
		(X=7 -> X1 = ['H',2,'C','C','C','H','H','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = ['H',2,'C','C','C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove82():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=2);(X=4);(X=5);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove82());
		(X=1 -> X1 = ['H','H',3,'C','C','C',7,'H',9],draw(X1),gameover2());
		(X=3 -> X1 = [1,'H','H','C','C','C',7,'H',9],draw(X1),gameover2());
		(X=6 -> X1 = [1,'H','C','C','C','H',7,'H',9],draw(X1),fourthmove826());
		(X=7 -> X1 = [1,'H',3,'C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = [1,'H',3,'C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove826():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=2);(X=3);(X=4);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-)"),nl,fourthmove826());
		(X=1 -> X1 = ['H','H','C','C','C','H','C','H',9],draw(X1),gameover2());
		(X=7 -> X1 = [1,'H','C','C','C','H','H','H','C'],draw(X1),gameover3());
		(X=9 -> X1 = [1,'H','C','C','C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove83():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=4);(X=5);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove83());
		(X=1 -> X1 = ['H',2,'H','C','C','C',7,'H',9],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','H','C','C','C',7,'H',9],draw(X1),gameover2());
		(X=6 -> X1 = [1,2,'H','C','C','H',7,'H','C'],draw(X1),fourthmove836());
		(X=7 -> X1 = [1,2,'H','C','C','C','H','H',9],draw(X1),gameover2());
		(X=9 -> X1 = [1,2,'H','C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove836():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=4);(X=5);(X=6);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove836());
		(X=1 -> X1 = ['H','C','H','C','C','H',7,'H','C'],draw(X1),gameover3());
		(X=2 -> X1 = ['C','H','H','C','C','H',7,'H','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,'H','C','C','H','H','H','C'],draw(X1),gameover2())
		).
thirdmove84():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove84());
		(X=2 -> X1 = ['C','H',3,'H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C',6,7,'H','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C',2,3,'H','C','C',7,'H','C'],draw(X1),gameover2());
		(X=7 -> X1 = ['C',2,3,'H','C',6,'C','H','C'],draw(X1),gameover2());
		(X=9 -> X1 = ['C',2,3,'H','C',6,'C','H','H'],draw(X1),fourthmove849())
		).
fourthmove849():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove849());
		(X=2 -> X1 = ['C','H','C','H','C',6,'C','H','H'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3());
		(X=6 -> X1 = ['C',2,'C','H','C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove86():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=8)) -> write("Wrong Move ! (-_-) "),nl,thirdmove86());
		(X=1 -> X1 = ['H',2,'C',4,'C','H','C','H',9],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','C',4,'C','H','C','H',9],draw(X1),gameover2());
		(X=4 -> X1 = [1,2,'C','H','C','H','C','H',9],draw(X1),gameover2());
		(X=7 -> X1 = [1,2,'C',4,'C','H','H','H','C'],draw(X1),fourthmove867());
		(X=9 -> X1 = [1,2,'C',4,'C','H','C','H','H'],draw(X1),gameover2())
		).
fourthmove867():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove867());
		(X=1 -> X1 = ['H',2,'C','C','C','H','H','H','C'],draw(X1),gameover3());
		(X=2 -> X1 = ['C','H','C',4,'C','H','H','H','C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,'C','H','C','H','H','H','C'],draw(X1),gameover2())
		).
thirdmove87():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove87());
		(X=1 -> X1 = ['H',2,3,'C','C',6,'H','H','C'],draw(X1),fourthmove871());
		(X=2 -> X1 = ['C','H',3,4,'C',6,'H','H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['C',2,'H',4,'C',6,'H','H','C'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,3,'H','C',6,'H','H','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['C',2,3,4,'C','H','H','H','C'],draw(X1),gameover2())
		).
fourthmove871():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=4);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove871());
		(X=2 -> X1 = ['H','H',3,'C','C','C','H','H','C'],draw(X1),gameover2());
		(X=3 -> X1 = ['H',2,'H','C','C','C','H','H','C'],draw(X1),gameover2());
		(X=6 -> X1 = ['H',2,'C','C','C','H','H','H','C'],draw(X1),gameover3())
		).
thirdmove89():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove89());
		(X=1 -> X1 = ['H',2,'C',4,'C',6,'C','H','H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','C',4,'C',6,'C','H','H'],draw(X1),gameover2());
		(X=3 -> X1 = [1,2,'H',4,'C','C','C','H','H'],draw(X1),fourthmove893());
		(X=4 -> X1 = [1,2,'C','H','C',6,'C','H','H'],draw(X1),gameover2());
		(X=6 -> X1 = [1,2,'C',4,'C','H','C','H','H'],draw(X1),gameover2())
		).
fourthmove893():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove893());
		(X=1 -> X1 = ['H',2,'H','C','C','C','C','H','H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','H','C','C','C','C','H','H'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).





secondmove9():-nl,write("Enter Your Second Move "),read(X),
		(
		(((X=5);(X=9)) -> write("Wrong Move ! (-_-)"),nl,secondmove9());
		(X=1 -> X1 = ['H','C',3,4,'C',6,7,8,'H'],draw(X1),thirdmove91());
		(X=2 -> X1 = [1,'H',3,'C','C',6,7,8,'H'],draw(X1),thirdmove92());
		(X=3 -> X1 = [1,2,'H',4,'C','C',7,8,'H'],draw(X1),thirdmove93());
		(X=4 -> X1 = [1,2,3,'H','C',6,'C',8,'H'],draw(X1),thirdmove94());
		(X=6 -> X1 = [1,2,'C',4,'C','H',7,8,'H'],draw(X1),thirdmove96());
		(X=7 -> X1 = [1,2,3,4,'C',6,'H','C','H'],draw(X1),thirdmove97());
		(X=8 -> X1 = [1,2,3,4,'C',6,'C','H','H'],draw(X1),thirdmove98())
		).
thirdmove91():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove91());
		(X=3 -> X1 = ['H','C','H',4,'C',6,7,'C','H'],draw(X1),gameover2());
		(X=4 -> X1 = ['H','C',3,'H','C',6,7,'C','H'],draw(X1),gameover2());
		(X=6 -> X1 = ['H','C',3,4,'C','H',7,'C','H'],draw(X1),gameover2());
		(X=7 -> X1 = ['H','C',3,4,'C',6,'H','C','H'],draw(X1),gameover2());
		(X=8 -> X1 = ['H','C',3,4,'C',6,'C','H','H'],draw(X1),fourthmove918())
		).
fourthmove918():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove918());
		(X=3 -> X1 = ['H','C','H',4,'C','C','C','H','H'],draw(X1),gameover3());
		(X=4 -> X1 = ['H','C','C','H','C',6,'C','H','H'],draw(X1),gameover2());
		(X=6 -> X1 = ['H','C','C',4,'C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove92():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=2);(X=4);(X=5);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove92());
		(X=1 -> X1 = ['H','H',3,'C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=3 -> X1 = [1,'H','H','C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=6 -> X1 = [1,'H','C','C','C','H',7,8,'H'],draw(X1),fourthmove926());
		(X=7 -> X1 = [1,'H',3,'C','C','C','H',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = [1,'H',3,'C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove926():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=2);(X=3);(X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove926());
		(X=1 -> X1 = ['H','H','C','C','C','H','C',8,'H'],draw(X1),gameover2());
		(X=7 -> X1 = [1,'H','C','C','C','H','H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = [1,'H','C','C','C','H','C','H','H'],draw(X1),gameover2())
		).
thirdmove93():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove93());
		(X=1 -> X1 = ['H',2,'H','C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','H','C','C','C',7,8,'H'],draw(X1),gameover2());
		(X=4 -> X1 = ['C',2,'H','H','C','C',7,8,'H'],draw(X1),fourthmove934());
		(X=7 -> X1 = [1,2,'H','C','C','C','H',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = [1,2,'H','C','C','C',7,'H','H'],draw(X1),gameover2())
		).
fourthmove934():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=3);(X=4);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove934());
		(X=2 -> X1 = ['C','H','H','H','C','C',7,'C','H'],draw(X1),gameover3());
		(X=7 -> X1 = ['C',2,'H','H','C','C','H','C','H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).
thirdmove94():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=4);(X=5);(X=7);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove94());
		(X=1 -> X1 = ['H',2,'C','H','C',6,'C',8,'H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','C','H','C',6,'C',8,'H'],draw(X1),gameover2());
		(X=3 -> X1 = [1,2,'H','H','C','C','C',8,'H'],draw(X1),fourthmove943());
		(X=6 -> X1 = [1,2,'C','H','C','H','C',8,'H'],draw(X1),gameover2());
		(X=8 -> X1 = [1,2,'C','H','C',6,'C','H','H'],draw(X1),gameover2())
		).
fourthmove943():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=4);(X=5);(X=6);(X=7);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove943());
		(X=1 -> X1 = ['H','C','H','H','C','C','C',8,'H'],draw(X1),gameover3());
		(X=2 -> X1 = ['C','H','H','H','C','C','C',8,'H'],draw(X1),gameover3());
		(X=8 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).
thirdmove96():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove96());
		(X=1 -> X1 = ['H',2,'C',4,'C','H','C',8,'H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','C',4,'C','H','C',8,'H'],draw(X1),gameover2());
		(X=4 -> X1 = [1,2,'C','H','C','H','C',8,'H'],draw(X1),gameover2());
		(X=7 -> X1 = [1,2,'C',4,'C','H','H','C','H'],draw(X1),fourthmove967());
		(X=8 -> X1 = [1,2,'C',4,'C','H','C','H','H'],draw(X1),gameover2())
		).
fourthmove967():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove967());
		(X=1 -> X1 = ['H','C','C',4,'C','H','H','C','H'],draw(X1),gameover2());
		(X=2 -> X1 = ['C','H','C',4,'C','H','H','C','H'],draw(X1),gameover3());
		(X=4 -> X1 = [1,'C','C','H','C','H','H','C','H'],draw(X1),gameover2())
		).
thirdmove97():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove97());
		(X=1 -> X1 = ['H','C',3,4,'C',6,'H','C','H'],draw(X1),gameover2());
		(X=2 -> X1 = ['C','H',3,4,'C',6,'H','C','H'],draw(X1),fourthmove972());
		(X=3 -> X1 = [1,'C','H',4,'C',6,'H','C','H'],draw(X1),gameover2());
		(X=4 -> X1 = [1,'C',3,'H','C',6,'H','C','H'],draw(X1),gameover2());
		(X=6 -> X1 = [1,'C',3,4,'C','H','H','C','H'],draw(X1),gameover2())
		).
fourthmove972():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=1);(X=2);(X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove972());
		(X=3 -> X1 = ['C','H','H',4,'C','C','H','C','H'],draw(X1),gameover3());
		(X=4 -> X1 = ['C','H',3,'H','C','C','H','C','H'],draw(X1),gameover3());
		(X=6 -> X1 = ['C','H','C',4,'C','H','H','C','H'],draw(X1),gameover3())
		).
thirdmove98():-nl,write("Enter Your Third Move "),read(X),
		(
		(((X=5);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-) "),nl,thirdmove98());
		(X=1 -> X1 = ['H',2,'C',4,'C',6,'C','H','H'],draw(X1),gameover2());
		(X=2 -> X1 = [1,'H','C',4,'C',6,'C','H','H'],draw(X1),gameover2());
		(X=3 -> X1 = [1,2,'H',4,'C','C','C','H','H'],draw(X1),fourthmove983());
		(X=4 -> X1 = [1,2,'C','H','C',6,'C','H','H'],draw(X1),gameover2());
		(X=6 -> X1 = [1,2,'C',4,'C','H','C','H','H'],draw(X1),gameover2())
		).
fourthmove983():-nl,write("Enter Your Fourth Move "),read(X),
		(
		(((X=3);(X=5);(X=6);(X=7);(X=8);(X=9)) -> write("Wrong Move ! (-_-)"),nl,fourthmove983());
		(X=1 -> X1 = ['H','C','H',4,'C','C','C','H','H'],draw(X1),gameover3());
		(X=2 -> X1 = ['C','H','H',4,'C','C','C','H','H'],draw(X1),gameover3());
		(X=4 -> X1 = ['C',2,'H','H','C','C','C','H','H'],draw(X1),gameover3())
		).








		
