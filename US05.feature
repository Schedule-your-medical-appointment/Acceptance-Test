US05
Feature: Escoger médico
COMO usuario
QUIERO que la aplicación me muestre los doctores disponibles
PARA escoger el médico de mi peferencia.

Scenario: El usuario no conoce a su médico
    Given que el [usuario] está en la sección de [escoger médico] 
    And no conoce a ninguno de ellos
    When el [usuario] seleccione “Nosotros te ayudamos”
    Then le aparecerá el [listado de médicos] con sus calificaciones
    
    Example:
        |     usuario    | Nosotros te ayudamos  |
        | escoger médico |   listado de médico   |
        
Scenario: El usuario conoce a su médico
    Given que el [usuario] está en la sección de [escoger médico] 
    And conoce al médico de su preferencia
    When el [usuario] seleccione “Médico”
    Then le aparecerá el [listado de los nombres] de médicos
    
    Example:
        |     usuario    |            Médico          |
        | escoger médico |   listado de los nombres   | 
        
Scenario: El usuario no selecciona un médico 
    Given que el [usuario] está en la sección de [escoger médico]  
    And no conoce a ninguno de ellos
    When el [usuario] seleccione “Nosotros te ayudamos”
    Then le aparecerá el [listado de los nombres] con sus calificaciones
    
    Example:
        |     usuario    |     Nosotros te ayudamos   |
        | escoger médico |   listado de los nombres   | 
