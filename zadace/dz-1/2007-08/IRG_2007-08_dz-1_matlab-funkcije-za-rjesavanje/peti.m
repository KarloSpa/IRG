function out=peti(G1,G2)
%funkcija peti(G1,G2) za zadani par dvodimenzionalnih pravaca G1 i G2 vra�a
%koordinate to�ke njihova presjeci�ta.
%
%NAPOMENA: parametre pravaca predati u obliku [a b c] ili [a;b;c] (ovaj put
%je svejedno :)))
%
%NAPOMENA DRUGA: u slucaju greske, mo�ete pretpostaviti da su pravci
%paralelni, ali ne uzimajte me za rije�

%ponistimo prvo homogene koordinate:
G1 = G1./G1(3);
G2 = G2./G2(3);

A = [G1(1),G1(2);G2(1),G2(2)];
B = [-G1(3);-G2(3)];

X = linsolve(A,B);

out = [X;1];