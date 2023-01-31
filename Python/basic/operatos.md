# ➕ Operators

Operadores são símbolos que dizem ao [interpretador](https://pt.wikipedia.org/wiki/Interpretador#:~:text=Interpretadores%20s%C3%A3o%20programas%20de%20computador,de%20acordo%20com%20a%20implementa%C3%A7%C3%A3o.) para realizar manipulações (operações) matemáticas, lógicas e de comparação específicas.

## ✖️ Operadores Aritméticos

|Operador|Nome|Função|
|:---:|:---:|:---:|
|+|Adição|retorna a soma de dois valores.|
|-|Subtrração|retorna a diferença de dois valores.|
|*|Multiplicação|retorna o produto de dois valores.|
|**|Exponenciação|retorna a exponenciação de um valor|
|**1/x|Radiciação|retorna a raiz x do valor passado.|
|/|Divisão|retorna a divisão de dois valores.|
|//|Divisão inteira|retorna a divisão inteira de dois valores(arrendodado).|
|%|modulo|retorna o resto de uma divisão de dois valores.|

## | **__=__** | Operadores de Atribuição

|Operador|Nome|Função|
|:---:|:---:|:---:|
|=|Atribuição|atribui um valor a uma ou mais variáveis.|
|+=|Incremento|soma um valor a uma variável e a sobrescreve.|
|-=|Decremento|subtrai um valor a uma variável e a sobrescreve.|
|*=|Atribuição multiplicativa|multipa uma variável pelo valor e a sobrescreve.|
|/=|Atribuição de divisão|divide uma variável e a sobrescreve.|
|**=|Atribuição exponencial|exponencia uma variável e a sobrescreve.|
|//=|Atribuição de divisão inteira|divide uma variável e a sobrescreve "arredondada".|
|%=|Atribuição de resto|divide o uma variável e sobrescrerve a variável com o resto.|
|:=|Expressão nomeada| Este operador é usado geralmente para atribuir algo durante o uso de um statment de controle de fluxo. [PEP 572](https://peps.python.org/pep-0572/)|

## 🧑‍🤝‍🧑 Operadores Relacionais

|Operador|Nome|Função|
|:---:|:---:|:---:|
|==|Igual|retorna True se duas expressões forem iguais e False se não|
|!=|Diferente|retorna True se duas expressões forem diferentes e False se não|
|>|Maior|retorna True se uma expressão for maior que outra e False se não|
|>=|Maior ou igual|retorna True se uma expressão for maior ou igual a outra e False se não|
|<|Menor|retorna True se uma expressão for menor que outra e False se não|
|<=|Menor ou igual|retorna True se uma expressão for menor ou igual a outra e False se não|

## ⛔ Operadores Booleanos

|Operador|Nome|Função|
|:---:|:---:|:---:|
|and|e|retorna True se duas expressões forem verdadeiras, False se uma ou ambas não|
|or|ou|retorna True se alguma das expressões for verdadeira|
|not|não|retorna o Boolean inverso da expressão lógica|

## 💳 Operador de Identidade

|Operador|Nome|Função|
|:---:|:---:|:---:|
|is|é|retorna True se dois objetos são os mesmos, False se não|

## 🚢 Operador Pertencente

|Operador|Nome|Função|
|:---:|:---:|:---:|
|in|em|retorna True se um objeto está contido em outro, False se não|

## | **__&__** | Operadores Binário

Caso queira entender mais sobre [Operadores Binário](https://www.digitalocean.com/community/tutorials/python-bitwise-operators)

|Operador|Nome|Função|
|:---:|:---:|:---:|
|&|binário e|retorna True se duas expressões forem verdadeiras, False se uma ou ambas não. porem só com inteiros|
|\||binário ou|retorna True se alguma das expressões for verdadeira. porem só com inteiros|
|^|xor|retorna o resultado de XOR bit a bit de dois inteiros|
|<<|left shift|Desloca os bits do primeiro operando deixado pelo número especificado de bits|
|>>|right shift|Desloca os bits do primeiro operando deixado pelo número especificado de bits|
|~|bitwise complement|Desloca os bits do primeiro operando deixado pelo número especificado de bits|

## | **__&=__** | Bitwise Assignment Operators

|Operador|Nome|Função|
|:---:|:---:|:---:|
|&=|Bitwise AND Assignment|Executa AND bit a bit e atribui valor ao operando esquerdo|
|\|=|Bitwise Inclusive OR Assignment|Executa OR bit a bit e atribui valor ao operando esquerdo|
|^=|Bitwise Exclusive OR Assignment|Executa XOR bit a bit e atribui valor ao operando esquerdo|
|>>=|Bitwise Right Shift Assignment|Executa o deslocamento bit a bit para a direita e atribui valor ao operando esquerdo|
|<<=|Bitwise Left Shift Assignment|Executa o deslocamento bit a bit para a esquerda e atribui valor ao operando esquerdo|

## Operadores de Sequência e String

Lembrando que String é uma sequência de caracteres.

|Operador|Nome|Função|
|:---:|:---:|:---:|
|+|Concatenação|retorna a concatenação de duas sequências|
|*|Concatenação multipla|retona a sequencia concatenada n vezes|
|%|Operador de formatação de string|formata uma string com um formato especifico|

## Operadores de Atribuição de Sequência

|Operador|Nome|Função|
|:---:|:---:|:---:|
|+=|Atribuição de Concatenação|Concatena a sequência com o operando correto e atribui o resultado a essa sequência|
|*=|Atribuição Multipla de Concatenação|Múltiplo concatena a sequência e atribui o resultado a essa sequência|
