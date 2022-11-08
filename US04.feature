US04
Feature: Programar citas médicas
COMO usuario 
QUIERO que el proceso de programar una cita médica mediante el aplicativo sea sencillo
PARA no confundirme en el proceso y finalizar con éxito.

Scenario: El usuario finaliza con éxito el proceso
    Given que la aplicación al momento de escoger el [horario] reservará la cita
    When el [usuario] selecciona la opción “Confirmar”
    Then aparecerá un [mensaje] “Cita programada”

    Example: Pantalla Horarios 
        |   botón   |     mensaje     |
        | Confirmar | Cita programada |

Scenario: El usuario no finaliza con éxito el proceso
    Given que la aplicación al momento de elegir el [horario]
    When el [usuario] selecciona la opción de “Confirmar”
    Then aparecerá un [mensaje] “Ha ocurrido un error, vuelva a intentarlo”

        Example: Pantalla Horarios 
        |   botón   |                mensaje                    |
        | Confirmar | Ha ocurrido un error, vuelva a intentarlo |
