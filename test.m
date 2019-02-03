function F = test(X) %ベクトルの定義
global a b; %変数の定義
F = [X(a) + X(b); %方程式の記述
X(a)^X(b) - 1]; %内生変数はX() で示す
end %セミコロンは不要