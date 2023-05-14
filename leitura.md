## Programando em Lua
# Características de .Lua
As características de Lua
Gerenciamento automático da memória
Tipagem dinâmica
Linguagem de Script
Portátil
Embutível
Leve
Livre

# Variaveis
As 'strings' em lua é um tipo imutável.

Os tipos numéricos como int, flot, double e etc.. Todos em lua fazem parte de um mesmo
tipo chamado 'number'.
Os tipos básicos de lua, portanto, são:
nil, boolean, number, string, function e table

# Tipos de 'For Loop'
O for loop em lua é mais simples de escrever, por exemplo, suponhamos que exista um array:

copas = {1958, 1962, 1970, 1994, 2002}

para correr o array, usamos
~~~
for i=1, #copas do
    print(copas[i])
end
~~~
---
Também podemos printar valores em par, cujo um é o indice e o outro o valor. Fazemos isso utilizando uma função chamada ipairs(aquivem o arry):

~~~
for indice, valor in ipairs(copas) do
    print(indice, valor)
end
~~~

---
Em lua, podemos criar um tipo table, usando dicionários!
~~~
poorCountries = 
{
 [1] =  "Burundi", 
 [2] =  "Sudão do Sul", 
 [3] =  "Malawi", 
 [4] =  "República Centro-Africana", 
 [5] =  "Níger"
}
~~~

E para acessar os valores podemos usar: 
~~~
print(poorCountries[1])
~~~
Dessa forma acessamos o valor que está na chave [1], mas também podemos criar um foor loop para pegar ambos os valores:
~~~

for k, v in pairs(poorCountries) do
    print(k,":", v)
end

~~~

A primeira coisa que devemos lembrar é que esses arrays em lua são chamados de tipo "Table" e quando queremos acessar o index desses valores - quando não são dicionários, utilizamos a funcao ipairs() - <font color="red"> Veja que estamos usando o 'i' <\font>. O 'i' indica que vamos pegar o index.

Quando estamos trabalhando com **Dicionários**, estes não possuem valores indexados. A única forma de acessarmos os valores é pelas chaves. Para isso, usamos um for ou da forma conencional mesmo. Usando o for:

~~~
for k,v in pairs(nomeDicionario) do
    print(k, v)
end
~~~

O comando anterior coloca em 'k' as chaves e 'v' serão os valores correspondentes a cada chave!

---

# Dicionários

Os dicionários são containers que não indexa os elementos. A única forma de acessar os elementos é chamando a chave. Lembrando que os dicionários são dentro do conjunto do tipo "table".

E são criados assim:

~~~
    -- definindo uma tabela vazia
    local lista = {}

    -- adicionando elementos
    lista[1] = "banana"
    lista[2] = "maçã"
    lista[3] = "laranja"

    -- acessando um elemento pelo índice
    print(lista[1]) -- saída: banana

~~~

Veja que no exemplo anterior, estamos chamandos os valores por meio das chaves. Neste caso, as chaves estão sendo representadas por números, mas poderiam ser strings também!

~~~
info = 
{
    --- Cria dicionários cujas chaves são "nome", "endereço" e "Pais"
    ["nome"] = "Hector Roberto",
    ["Rua"] = "Teneten Ricardo Guimarães",
    ["Pais"] = "Brasil"
}

   --- Podemos acessar o valor da key desta forma:
        print(info["nome"])

   --- Ou podemos acessar desta forma:
        print(info.nome)
~~~
