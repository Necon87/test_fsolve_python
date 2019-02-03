global c n y r w k i; %内生変数の定義
global z alpha beta theta phi delta; %パラメータの定義

%ベクトル内での内生変数の順番を定義
c = 1;
n = 2;
y = 3;
r = 4;
w = 5;
k = 6;
i = 7;

%パラメータの定義
z = 1;
alpha = 0.33;
beta = 0.996;
theta = 1.5;
phi = 2;
delta = 0.04;

%初期値の設定
c0 = 1;
n0 = 1;
y0 = 3;
r0 = 0;
w0 = 1;
k0 = 10;
i0 = 1;
X0 = [c0,n0,y0,r0,w0,k0,i0]; %初期値ベクトルの定義

Ans = fsolve(@RBC,X0) %解の導出