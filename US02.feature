US02
Feature: Escoger día y hora
COMO usuario
QUIERO usuario QUIERO escoger el dìa y hora de mi cita mèdica
PARA evitar tiempos de espera

Scenario: El usuario escoge un dìa vàlido del calendario.
Given que la aplicaciòn muestra en azul los horarios disponibles 
y en gris los horarios no disponibles para agendar cita en un calendario.
When el usuario seleccione uno de los horarios disponibles 
Then se marcarà ese horario

Example:
|usuario|día|hora|disponibles|


Scenario: El usuario escoge un dìa no valido
Given que la aplicacion muestra en azul los horarios disponibles
y en gris los horarios no disponibles para agendar cita en un calendario.
When el usuario seleccione uno de los horarios no disponibles
Then  aparecerà un menssaje "seleccionar un horario disponible" en la pantalla

Example:
|usuario|día|hora|seleccione|diponibles|


Scenario: El usuario no escoge ningùn dìa en el calendario
Given que el usurio se encuentra en la secciòn para escoger el 
horario de su cita
When el usuario presione "confirmar" 
y el usuario no haya esocgido un horario
Then: aparecerà un mensaje "Falta seleccionar un horario en la pantalla"

Example:
|usuario|día|hora|falta seleccionar|
