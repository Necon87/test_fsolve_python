global c n y r w k i; %�����ϐ��̒�`
global z alpha beta theta phi delta; %�p�����[�^�̒�`

%�x�N�g�����ł̓����ϐ��̏��Ԃ��`
c = 1;
n = 2;
y = 3;
r = 4;
w = 5;
k = 6;
i = 7;

%�p�����[�^�̒�`
z = 1;
alpha = 0.33;
beta = 0.996;
theta = 1.5;
phi = 2;
delta = 0.04;

%�����l�̐ݒ�
c0 = 1;
n0 = 1;
y0 = 3;
r0 = 0;
w0 = 1;
k0 = 10;
i0 = 1;
X0 = [c0,n0,y0,r0,w0,k0,i0]; %�����l�x�N�g���̒�`

Ans = fsolve(@RBC,X0) %���̓��o