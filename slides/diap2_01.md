---
type: slides
---

# Estructura de datos

Notas: Hasta ahora hemos visto los objetos más elementales de R. De hecho, adelantamos que los vectores son la estructura más básica para contener datos. Por supuesto, existen muchas otras de trabajar con los datos.

De la misma forma que los vectores atómicos tienen longitud, así también será para todos los demás tipos de estructura de datos. Además, pueden tener atributos y dimensiones. Si vienes del capítulo anterior, recordarás que para poner los nombres de nuestros amigos en el vector de la orden de tacos utilizamos `name()`. Con esto le indicamos a R que ponga como atributo los nombres del vector. Para saber mejor qué contiene el vector nos apoyaremos de la función `str()`, que nos indica la e**str**uctura general del vector, la función `dim()`, que nos indicará la **dim**ensión, y la función `attributes()`, que nos dice los atributos del objeto.

En este capítulo veremos cómo se componen y para qué sirven estas estructuras de datos:

- 1 dimensión: Vectores
- 2 dimensiones: Matrices
- Múltiples dimensiones: Arrays, Data frames y listas

También veremos cómo ubicar los valores mediante índices y cómo forzar la conversión a otros tipos de estructuras.

---

# Hora de practicar

Nota: Veamos en qué consisten estas estructuras
