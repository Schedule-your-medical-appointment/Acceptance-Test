Feature: COMO usuario QUIERO que, una vez concluida la cita, la aplicación me muestre la receta médica PARA guiarme y tomar los medicamentos

Scenario Outline: El usuario ha recibido la consulta medica 
 Given que el usuario tras la consulta medica ha recibido una receta medica 
 When el usuario ingrese a la opcion "recetas"
 Then la aplicación mostrará la fecha de la cita con la receta que le medicó el doctor
 Examples:
  | cuadro de fecha | | cuadro de la receta |
   |fecha de la cita medica | |informacion de los medicamentos |

Scenario Outline: la aplicacion no muestra recetas
 Given que el usuario ya ha completado todas las recetas pendientes
 When el usuario ingrese a la opcion "recetas"
 Then la aplicación mostrará el mensaje “No tiene recetas por completar” 
 Examples:
  |boton para visualizar recetas | cuadro de texto
   |"recetas" | | "No tiene recetas por completar " |

Scenario Outline: La aplicación no tiene registro de “Recetas”
 Given que el usuario todavía no ha tenido citas médicas
 When el usuario ingrese a la opción “Recetas”
 Then la aplicación mostrará el mensaje “Sus recetas médicas aparecerán aquí”
 Examples:
  |boton para visualizar recetas | cuadro de texto |
   |"recetas "| |“Sus recetas médicas aparecerán aquí”|
