US07
Feature: Citas pendientes
COMO usuario
QUIERO que la aplicacion me muestre las citas pendientes
PARA no olvidarme la fecha ni la hora de mi consulta.

Scenario: El usuario observ sus citas pendientes
    Given la aplicacion almacena un historial de citas programadas
    When el [usuario] haga click en la [opcion] Citas Pendientes
    Then le mostrara las citas pendientes y su respectiva informacion.
    
    Example:
    | usuario | visualiza |
    
Scenario: El usuario no tiene citas pendientes
    Given que el [usuario] no tiene citas pendientes
    When el [usuario] ingrese a su perfil
    And haga click en la [opcion] "Citas Pendientes"
    Then aparecera un mensaje [Usted no tiene citas pendientes]
    
    Example:
    | usuario | boton | Citas pendientes  | visualiza |
    
Scenario: La aplicacion no muestra la citas pendientes
    Given que el [usuario] ingresa a la aplicacion
    When inicie sesion
    And el usuario ingrese a su perfil
    Then le aparecera un mensaje "No se pudiero cargar sus citaspendientes"
    
    Example:
    | usuario | boton | citas pendientes  | Error |
