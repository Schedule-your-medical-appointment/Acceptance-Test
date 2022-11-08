US03
Feature: COMO usuario QUIERO seleccionar la especialidad en la que deseo sacar cita PARA atenderme de una forma más directa

Scenario Outline: Cliente desea agendar una cita  
  Given el usuario se encuentra en la pantalla de inicio
  When el usuario quiere agendar una cita medica
  And le da click al boton "agendar cita"
  Then la aplicacion le preguntara si es o no su primera vez para ofrecerle la ayuda correspondiente
   Examples:
      | boton para agendar cita| cuadro de pregunta con seleccion 
       | "agendar cita" |   | "¿Es su primera vez agendando una cita medica?" "si/no" |
     
Scenario Outline: Cliente no ha pasado por consulta general
 Given que el usuario no conoce con certeza la especialidad con la que necesita consulta
 When el usario responda que es su primera vez agendando una cita
 Then la aplicacion lo derivara inmediatamente con los horarios disponibles para medicina general 
  Examples:
   |cuadro de pregunta con seleccion| fecha correspondiente | cuadro de horarios correspondientes |
    |"¿Es su primera vez agendando una cita medica?" "si/no" || semana actual | | casilleros con los horarios para medicina general|

Scenario Outline: Cliente ya paso por consulta general
 Given que el usuario conoce con certeza la especialidad con la cual necesita consulta
 When el usuario responda que no es su primera 
 Then la aplicacion le mostrara un listado para que busque y seleccione dicha especialidad

  Examples:
   |cuadro de seleccion |
   |lista de especialidades que se ofrecen |
