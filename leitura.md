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

    -- acessando um elemento pela key 
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

No caso anterior, poderíamos criar da seguinte forma:

~~~
 info = 
    {
        --- Cria dicionários cujas chaves são "nome", "endereço" e "Pais"
        Nome = "Hector Roberto",
        Rua = "Teneten Ricardo Guimarães",
        Pais = "Brasil"
    }
~~~

Dentro dos dicionários, podemos criar outros tipos "tables". Por exemplo:

~~~
    ultimaCopa = 
    {
        ano = 2002,
        sede = "Japao e Korea do suk",
        jogadores = 
        {
            "Marcos(goleiro)", "Cafu(Capitao)", "Lúcio(Zagueiro)",
            "Roque Junior(Zagueiro)", "Roberto Carlos(Lateral-Esquerdo)",
            "Gilberto Silva(Volante)", "Kléberson(Volante)", "Rivaldo(Meio-Campo)",
            "Ronaldo(Atacante)", "Ronaldinho(Meio-Campo)", "Edmilson(Volante)"
        }


    }

    print(ultimaCopa.jogadores[1])

    --- Para acessar todos os valores do array dentro do dicionários, poderíamos 
    fazer tb:

    for indice = 1, #ultimaCopa.jogadores do
        print(ultimaCopa.jogadores[indice])
    end

~~~

Podemos adicionar novos elementos dentro de um array:

~~~

--- ADicionando um elemento dentro do array jogadores que está dentro do dicionário "ultimaCopa"
    table.insert(ultimaCopa.jogadores, "Luiz Felipe Scolari(técnico)")

--- Funcao remove
    table.remove(ultimo, indice)
    
~~~

Perceba que usamos **table.insert(ultimaCopa, "nome")**. É interessante que aqui o inset nao pede nenhum valor de index nem nada, é somente uma funcao de dois parâmetros em que o primeiro é o array e o segundo o valor a ser inserido no array(table)



