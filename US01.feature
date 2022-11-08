US01
Feature: Descargar aplicación de citas médicas
COMO usuario
QUIERO una aplicación
PARA sacar citas médicas y optimizar mi tiempo de espera sin hacer largas colas.

Scenario: El usuario navega por internet para buscar alguna aplicación que permita sacar citas
    Given que el [usuario] indaga sobre las aplicaciones de citas médicas en internet
    When encuentra la aplicación schedule your medical appointment y lo descarga
    Then este se [registra] y comienza a usarlo de forma segura
    
    Example:
    | usuario | registra |
    
Scenario: El usuario descarga la aplicación a través del Landing Page
    Given que el [usuario] ha buscado información de cómo programar una [cita médica]
    When el [usuario] ingrese a nuestro Landing Page
    And de click al [botón] "descargar"
    Then se instalará la aplicación y la podrá comenzar a usar
    
    Example:
    |   usuario   |   botón   |
    | cita médica | descargar |
    
Scenario: El usuario descarga la aplicación por la invitación de un amigo 
    Given que el [usuario] ha recibido el [link] de descarga de la aplicación de un contacto
    When de click al [link]
    Then instalará la aplicación y podrá [registrarse]
    
    Example:
    | usuario |     link    | registrarse |
