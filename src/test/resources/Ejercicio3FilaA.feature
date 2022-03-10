Feature: Project

  Scenario: obtener y borrar token


    Given yo uso la authenticacion basic
    When envio GET request a la /api/authentication/token.json con el body
    """
    """
    Then el codigo de respuesta deberia ser 200
    And el expected body deberia ser
    """
    {
        "TokenString": "IGNORE",
        "UserEmail": "fabian.machicao@gmail.com",
        "ExpirationTime": "IGNORE",
        
    }
    """
    
    And guardo el TokenString de la respuesta en TokenSTR
    
    When envio DELETE request a la /api/authentication/token.json con el body
    """
    """
    Then el codigo de respuesta deberia ser 200
    And el atributo UserEmail deberia ser fabian.machicao@gmail.com