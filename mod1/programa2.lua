ultimaCompra = 
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

table.insert(ultimaCompra.jogadores, "Luiz Felipe Scolari(técnico)")


for indice = 1, #ultimaCompra.jogadores do
    print(ultimaCompra.jogadores[indice])
end