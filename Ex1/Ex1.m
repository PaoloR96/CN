
% Definizione dell'intervallo del dominio
x = 0.988:.0001:1.012;
% Calcolo dei coefficienti
n = 7;
a = x;
b = -1;
c = zeros(length(x), n+1);
for k = 0:n
    c(:, k+1) = factorial(n)/(factorial(k)*factorial(n-k)) * a.^(n-k) .* b.^k;
end
y = sum(c, 2);
% funzione (x-1)^7
f = (x-1).^n;
% Plot delle due funzioni

plot(x, y, 'b', x, f, 'r');

xlabel('x');

ylabel('y');

legend('y', 'y1');



%Dal grafico si vede che il polinomio calcolato attraverso la formula del
%binomioù rappresenta un'approssimazione accettabile della
%funzione (x-1)^7 nell'intervallo considerato.L'errore
%relativo risulta essere molto alto perchè l'errore di rounf_off dovuto
% aumenta ad ogni moltiplicazione.