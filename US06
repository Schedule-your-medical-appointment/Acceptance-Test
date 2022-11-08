US06
Feature: Registro
COMO usuario 
QUIERO que la aplicación me confirme si el registro fue exitoso
PARA continuar con la programación de mi cita.

Scenario: El registro de la aplicación se realizó con éxito.
    Given el [usuario] ha ingresado a la aplicación en la opción Registrarse
        And haya ingresado su [DNI]
        And la [fecha_de_emisión]
        And cree una [contraseña]
    When presione el botón Registrarse
    Then le aparecerá un [mensaje] “Su registro se ha completado con éxito”
        And el botón “Iniciar sesión”

    Example: 
        |      DNI      |    fecha_de_emisión    |   contraseña  |                  mensaje                  |
        |   12345678    |       30/04/1984       |    1234abcd   |   Su registro se ha completado con éxito  |    


Scenario: El registro no se pudo completar.
    Given el [usuario] no ha llenado correctamente la [información_registro] (DNI, fecha de emisión y contraseña)
    When presione el botón “Registrarse”
    Then le aparecerá un [mensaje] indicando el error y “Vuelva a intentarlo”.

    Example:
        |      DNI      |    fecha_de_emisión    |   contraseña  |                      mensaje                         |
        |   12345678    |       00/00/1009       |    1234abcd   |   Fecha de emision incorrecta, vuelva a intentarlo   |  


Scenario: El usuario no ha llenado todos los campos
    Given que el usuario no ha terminado de llenar los [campos_registro] (DNI, fecha de emisión y contraseña)
    When presione el botón “Registrarse”
    Then le aparecerá un [mensaje] “Por favor, llenar todos los campos”

    Example:
        |      DNI      |    fecha_de_emisión    |   contraseña  |               mensaje                  |
        |   12345678    |         [NULL]         |    1234abcd   |   Por favor, llenar todos los campos   |  
