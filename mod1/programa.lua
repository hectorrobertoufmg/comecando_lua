copas = 
{
    [58] = "Suecia",
    [62] = "Chile",
    [70] = "Mexico",
    [94] = "EUA",
    [02] = "Japao"

}

for key, nome in pairs(copas) do
    if key == 02 then
        print("2022", nome)
        break
    end
    print(key, nome)
end