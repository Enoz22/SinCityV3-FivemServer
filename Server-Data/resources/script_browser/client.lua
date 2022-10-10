local url = "http://google.fr"


RegisterCommand("test1234", function(source, url)
    setBro(url)
end, false)


function setBro(url)

    CreateDui(url,100,100)

end
