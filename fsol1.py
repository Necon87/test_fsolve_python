from scipy.optimize import fsolve

def equations(q):
    a, b = q
    return (a+b, a**b-1)

a, b =  fsolve(equations, (1, 1))

print(a,b)
