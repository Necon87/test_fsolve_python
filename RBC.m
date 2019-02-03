function F = RBC(X) %関数の定義

global c n y r w k i; %内生変数の定義
global z alpha beta theta phi delta; %パラメータの定義

%方程式の記述

F = [X(c)^(-theta) - beta*(1+X(r)-delta)*X(c)^(-theta);
X(n)^phi - X(w)*X(c)^(-theta);
X(y) - z*(X(k)^alpha)*(X(n)^(1-alpha));
X(r) - z*alpha*(X(n)/X(k))^(1-alpha);
X(w) - z*(1-alpha)*(X(k)/X(n))^alpha;
X(k) - (1-delta)*X(k) - X(i);
X(y) - X(c) - X(i)];

end