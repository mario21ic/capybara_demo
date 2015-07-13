#language: es
Característica: buscar documentacion de Cucumber
    Como aprendiz de capybara
    Quiero entrar a google
    Para buscar documentacion sobre cucumber

    Escenario: Buscar documentacion cucumber
        Dado que estoy en la pagina de google
        Cuando busco "cucumber"
        Entonces puedo entrar en su pagina oficial "https://cucumber.io"
        Entonces puedo encontrar la documentacion en el link "Docs"
