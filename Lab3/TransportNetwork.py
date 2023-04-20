transport = {'Beijing': [['Shanghai', 1687], ['Hangzhou', 1958], ['Dalian', 1032], ['Mudanjiang', 1906]], 'Hangzhou': [['Beijing', 1958], ['Nanjing', 631], ['Changchun', 2946], ['Harbin', 3214], ['Hefei', 642]], 'Nanjing': [['Hangzhou', 631], ['Wuhan', 778], ['Hefei', 140], ['Chengdu', 2427]], 'Dalian': [['Beijing', 1032], ['Wuhan', 1635]], 'Mudanjiang': [['Beijing', 1906], ['Harbin', 366]], 'Shenzhen': [['Hefei', 2024]], 'Shanghai': [['Beijing', 1687]], 'Changchun': [['Hangzhou', 2946]], 'Harbin': [['Hangzhou', 3214], ['Mudanjiang', 366]], 'Hefei': [['Hangzhou', 642], ['Nanjing', 140], ['Shenzhen', 2024]], 'Wuhan': [['Nanjing', 778], ['Dalian', 1635]], 'Chengdu': [['Nanjing', 2427]]}

for k in transport:
    transport[k].sort(key=lambda x:x[1])

print(transport)