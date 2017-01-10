Program carree_magiqueFF.pas;

uses crt;
const
MAX = 5 ;
type
	Tab2d=array [1..MAX,1..MAX] of integer;

PROCEDURE  affichage(tab4:Tab2d ) ;

		var
			i,j:INTEGER ;
			 	begin
			 		for j := 1 to MAX do
			 			begin
			 				for i := 1 to MAX do
			 					begin
			 			 			if (tab4[i,j]<=9) then
			 			 				write ('  ',tab4[i,j])
			 			 			else
			 			 				write (' ',tab4[i,j])
			 					end;
			 				writeln;
			 			end;
			 	end;

PROCEDURE TestBordureD (var x1 : INTEGER ; var y1 : INTEGER);

					begin
						if (x1 > MAX) then
							begin
								x1 := 1 ;
							end;
							if (y1<1) then
							begin
								y1 := MAX ;
							end;
					end ;

PROCEDURE TestBordureG (var x3:INTEGER ;var y3:INTEGER);
					BEGIN
						IF (x3-1<1) THEN
							BEGIN
								x3:=MAX;
							END
						ELSE
							BEGIN
								x3:=(x3-1);
							END;
						IF (y3-1<1) THEN
							BEGIN
								y3:=MAX;
							END
						ELSE
							y3:=y3-1
					END;
FUNCTION Test(tab2:Tab2d ;x2:INTEGER ; y2:INTEGER): BOOLEAN;
			
					BEGIN
						IF tab2[x2,y2]=0 THEN
								Test:=TRUE
						ELSE
								Test:=FALSE
					END;
	
	PROCEDURE Initialisation(var Matrice0:T2dim; var abs:INTEGER; var ord:INTEGER);
					VAR
						i,j:INTEGER;
					BEGIN
						FOR j:=1 TO MAX DO
							BEGIN
								FOR i:=1 TO MAX DO
									BEGIN
										Matrice0[i,j]:=0;
									END;
								writeln;
							END;
						Matrice0[(MAX DIV 2)+1,(MAX DIV 2)]:=1;
						abs:=((MAX DIV 2)+1);
						ord:=(MAX DIV 2);
					END;
		
	PROCEDURE Remplissage( var tab:Tab2d ; var x:INTEGER ; var y:INTEGER);
		
					VAR
						i,j:INTEGER;
					
					BEGIN
						FOR i:=2 TO (MAX*MAX) DO
							BEGIN
								x:=x+1;
								y:=y-1;
								TestBordureDroite(x,y);
									IF (Test(tab,x,y)=FALSE) THEN
										BEGIN
											REPEAT
												TestBordureGauche(x,y)
											UNTIL (Test(tab,x,y)=TRUE);
										END;
								
								tab[x,y]:=i;
								Affichage(tab);
								readln;
							END;
					END;
		
	
	
	
	
VAR
	Matrice:Tab2d;
	abscisse,ordonnee:INTEGER;
	
BEGIN
	clrscr;
	Initialisation(Matrice,abscisse,ordonnee);
	Remplissage(Matrice,abscisse,ordonnee);
	readln;
END.
