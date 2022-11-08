US08
Feature: Notificacion
COMO usuario
QUIERO que la aplicacion me notifique un dia antes qe debo asistir a la cita
PARA recordarme que programe la atencion ese dia y hora.

Scenario: La aplicacion notifica al usuario un dia antes de su cita
  Given que la aplicacion incluye la herramienta de notificaciones
  When el [usuario] haga click en [notificaciones], podra encontrar un mensaje de advertencia "Tiene una cita programada" con sus datos registrados
  Then el usuario podra ser advertido y revisar a detalle
  
  Example: 
  | usuario | notificaciones  | mensaje de advertencia  |
  
Scenario: La aplicacion no notifica  
