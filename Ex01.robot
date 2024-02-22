*** Variables ***

&{PESSOA}  nome=Victor  sobrenome=Netto  idade=25  cidade=Uberlandia  UF=MG

@{FRUTA}  banana  laranja  melao  morango  melancia

*** Keywords ***

Criar um email    
    [Arguments]    ${nome}    ${sobrenome}    ${idade}
    ${email}    Catenate    ${nome}_${sobrenome}_${idade}@robot.com
    RETURN    ${email}


Informar o numero
    FOR  ${numero}    IN RANGE    0    11
        Log To Console   "Estou no numero${numero} de 0 a 10"
  
    END

Nome de Paises
    @{paises}    Create List    Brasil    EUA    Portugal    Espanha    Alemanha
    FOR  ${Pais}  IN  @{paises}
        Log To Console    ${Pais}
    
    END
    
    


*** Test Cases ***

Imprimir Dicionario
    Log To Console    ${PESSOA}[nome]

Imprimir Frutas
    Log To Console   ${FRUTA}[0]
    Log To Console   ${FRUTA}[1]
    Log To Console   ${FRUTA}[2]
    Log To Console   ${FRUTA}[3]
    Log To Console   ${FRUTA}[4]

Criar email
    ${resultado_email}    Criar um email    ${PESSOA}[nome]        ${PESSOA}[sobrenome]    ${PESSOA}[idade]
    Log To Console   ${resultado_email}

Informar o numero  
    Informar o numero

Exibir o nome de 5 paises
    Nome de Paises