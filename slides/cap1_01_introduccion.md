---
type: slides
---

# Introducción

Notas: ¡Bienvenido! Soy Miguel y te acompañaré en tacos de datos para mostrarte cómo utilizar R como todo un profesional.

Analizar datos se está convirtiendo en algo esencial para casi todas las profesiones, por lo que muchas personas busquen cada vez más cómo trabajar con datos. Para ello existen muchísimas herramientas que ayudan a extraer información que necesitemos. De entre todas estas opciones, R resalta por ser veloz, preciso y con paquetes que lo convierten en una herramienta muy poderosa. Sin embargo, si no estás familiarizado con la programación, aprender R puede ser un verdadero dolor de cabeza y no serías el único en pensarlo. Se suele decir que *R simplifica las cosas difíciles, pero dificulta las cosas fáciles*. Es por esto que en tacos de datos te brindaremos con toda la información que necesitas para utilizar R como un profesional.

R cuenta con una de las comunidades más activas y amigables en las que es muy fácil encontrar tutoriales y ayuda en general. El problema: casi todo está en inglés. Por eso haremos esta introducción de tal forma que no requieras de un alto nivel de inglés, pero dado que R está programado en este idioma al final el spanglish será inevitable.

Finalmente, este tutorial está dirigido principalmente a personas que nunca han trabajo con lenguajes de programación y que les interesa conocer cómo usar esta herramienta. Aunque si ya has trabajado con Python u otros lenguajes también podrías encontrar aquí referencias útiles.

---

# Instalación

<img src="/rstudio.PNG" alt="Captura de pantalla de la consola de R" width="80%" />

Notas: Aunque en este tutorial no necesitarás instalar nada, puedes hacer dar tus propios proyectos al instalar **R** en tu computadora. Además, te recomendamos ampliamente utilizar **RStudio** por tener una interfaz más amigable.

- R:
  - Ve al sitio [CRAN](https://cran.r-project.org/).
  - Selecciona la descarga en el sistema que utilices y luego da click en _base_
  - También puedes seleccionar el [servidor](https://cran.r-project.org/) que quede cerca de tu país.
  - Ejecuta el archivo e instala todas las opciones.

- RStudio:
  - Ve a la página oficial de [RStudio](https://www.rstudio.com/)
  - Selecciona [RStudio Desktop](https://www.rstudio.com/products/rstudio/download/#download)
  - Descarga la opción apropiada a tu sistema operativo (Mac, Windows o Linux).
  - Instala

---

# Interfaz

<img src="/consola_R.PNG" alt="Captura de pantalla de la consola de R" width="50%" />

```r
# Esto es un comentario
print("Hola mundo")
```

```out
[1] "Hola Mundo"
```

- Los comentarios inician con `#`
- Están hechos para informar al usuario sin afectar en el resultado.

Notas: Al utilizar R, tu interfaz se verá algo similar a lo que ves en la presentación. La consola se puede utilizar de dos formas: directamente o a través de un script. En cualquiera de los casos podrás escribir vectores, funciones que la máquina procesará, así como comentarios para que el usuario (tú o alguien más) sepa la lógica de lo que estás haciendo. Estos comentarios inician con el símbolo `#` solamente "imprimirán" el resultado, sin hacer ninguna otra acción.

En cualquier otro caso, R interpretará cualquier caracter como una instrucción para que ejecute algo. Por ejemplo, la función `print()` mostrará lo que pongamos dentro de esa función. En este caso, le diremos a la computadora que imprima `Hola mundo` en la consola.

Aunque esta función no hace mucho, R está lleno de otras opciones que lo convierten en una de las opciones más utilizadas para analizar datos en varias ciencias.

---

# Calculado*R*a

```r
# Sumas y restas
(-1) - 2 + 5
```

```out
[1] 2
```

```r
# Multiplicación y división
(45 * 6) / 7
```

```out
[2] 38.57143
```

```r
# Potencias y residuos
2 ^ (12 %% 8)
```

```out
[3] 16
```

Notas: Como casi todos los lenguajes de programación, R tiene las funciones básicas de una calculadora. Por lo que es muy fácil realizar operaciones matemáticas:

- Sumas `+`
- Restas `-`
- Multiplicaciones `*`
- Divisiones `/`
- Potencias `^`
- Residuos `%%`

---

# Creación de objetos

```r
# Guardados en memoria
un_objeto <- 2

otro_objeto = 5

objetos <- un_objeto - otro_objeto

# Imprimir en consola
objetos
```

```out
[1] -3
```

Notas: La mayor parte del tiempo querrás guardar números, variables, textos, fórmulas e incluso funciones para poder hacer análisis sofisticados con R. Para ello necesitás **declarar** un `objeto` _que tenga_ un `valor` **asignado** utilizando el símbolo `<-`, escrito de la siguiente manera:

```r
objeto <- valor
```

El símbolo `<-` es el más utilizado para declarar todos los objetos en R. Sin querer entrar a detalles para no crear confusión, otro símbolo recurrente es `=`, el cual también hace lo mismo que `<-` (como lo podrás ver en la diapositiva). La diferencia se encuentra en las convenciones de R:

- Con `<-` se crean objetos
- Con `=` se establecen parámetros u objetos locales

Con los objetos podrás hacer toda clase de operaciones, varias de las cuales las abordaremos en este tutorial.

---

# Convenciones de nombres

```r
# 1. Nombre aduecuado
# No recomendado
data <- read.csv("carpeta/tacos.csv")

# Recomendado
tacos <- read.csv("carpeta/tacos.csv")
```

```r
# 2. Estándares de nomenclatura

# Recomendada
#** Notación serpiente o de guión bajo
snake_case

# Otras nomenclaturas de uso frecuente

# Notación camello
lowerCamelCase
UpperCamelCase

# Notación leopardo o de punto
leopard.case
```

Notas: Nombrar objetos puede parecer una tarea trivial, pero podrías tener serios problemas si no tienes el cuidado adecuado desde un principio. Puede que en un pequeño script declares una matriz como `matriz1` y luego otra `matriz2` con la confianza de que sepas qué contienen esas matrices, pero conforme pase el tiempo o crezca el proyecto probablemente olvides qué tipo de datos contienen.

Tampoco existe una respuesta obvia para la mejor forma de nombrar los objetos, pero ante la duda sigamos la regla de que **se programa para los humanos, no para la computadora**.

Si quieres hacerte la vida más fácil en el uso de R, estas son 4 recomendaciones que podemos hacerte:

1. Pon un nombre que describa brevemente qué contiene el objeto o qué hace.
2. Considera la nomenclatura que resulte más fácil de leer para ti y otros usuarios. Recomendamos la notación serpiente o de guión bajo `_` porque es menos cansada a los ojos.

---

# Convenciones de nombres

```r
# 3. Objetos sensibles a mayúsculas y minúsculas
nombre <- 1
Nombre
NOMBRE
```

```out
[1] 1

Error: object 'Nombre' not found

Error: object 'NOMBRE' not found
```

```r
# 4. Uso de espacios
# Buena práctica
tacos_de_carne_asada <- tacos %>%
  filter(Tipo == "Carne asada") %>%
  mutate(Orden = Cantidad * 5)

# Mala práctica
Tacos1<-tacos%>%filter(Tipo=="Carne asada")%>%mutate(Orden=Cantidad*5)

```

Notas:
3. Las mayúsculas y minúsculas importan. El objeto `x` es distinto al objeto `X`, por lo que tienes que tomar en cuenta este detalle al momento de trabajar con varios objetos a fin de evitar confusiones y errores.
4. Utiliza espacios entre operadores. _Leerestafrasesehacedifícilenpocotiempo_ mientras que _esta frase es más fácil de leer_. Sucede lo mismo con el código.

Estas recomendaciones son parte de las buenas prácticas para reproducir y compartir código. Todos los ejercicios que te pondremos implementarán estas recomendaciones, por lo que te sugerimos hacer lo mismo cuando hagas tus propios proyectos.

---

# Hora de practicar

Nota: ¡Suficiente charla! Hora de ponernos a practicar lo que hemos visto.
