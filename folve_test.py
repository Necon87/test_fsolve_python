#%% fsol1.pyの内容
from scipy.optimize import fsolve

def equations(q):
    a, b = q
    return (a+b, a**b-1)

a, b =  fsolve(equations, (1, 1))

print(a,b)

#%%fsol2.pyの内容
from scipy.optimize import fsolve

def equations(p):
    x, y = p
    return (y - x**2 -7 + 5*x, 4*y - 8*x + 21)

x, y =  fsolve(equations, (5, 5))

print(x, y)

#%%fsolrbc.pyの内容
#パッケージの呼出
from scipy.optimize import fsolve

#パラメータの定義(カリブレーション)
alpha = 0.33
beta = 0.996
theta = 1.5
varphi = 2.0
delta = 0.04
z = 1

#方程式の定義
def equations(rbc):
    c, n, y, r, w, k, i = rbc
    return (c**(-theta) - beta*(1+r-delta)*(c**(-theta))
           , n**(varphi) - w*(c**(-theta))
           , y - z*k**(alpha)*(n**(1-alpha))
           , r - z*alpha*((n/k)**(1-alpha))
           , w - z*(1-alpha)*((k/n)**(alpha))
           , k - (1-delta)*k - i
           , y - c - i)

#初期値の設定
c, n, y, r, w, k, i =  fsolve(equations, (1, 1, 1, 1, 1, 1, 1))

#結果の出力
print(c, n, y, r, w, k, i)
