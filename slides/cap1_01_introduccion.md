---
type: slides
---

# Introducción

Notas: Analizar datos se está convirtiendo en algo esencial para casi todas las profesiones, por lo que muchas personas busquen cada vez más cómo trabajar con datos. Para ello existen muchísimas herramientas que ayudan a extraer información que necesitemos. De entre todas estas opciones, R resalta por ser veloz, preciso y con paquetes que lo convierten en una herramienta muy poderosa. Sin embargo, si no estás familiarizado con la programación, aprender R puede ser un verdadero dolor de cabeza y no serías el único en pensarlo. Se suele decir que *R simplifica las cosas difíciles, pero dificulta las cosas fáciles*. Es por esto que en tacos de datos te brindaremos con toda la información que necesitas para utilizar R como un profesional.

R cuenta con una de las comunidades más activas y amigables en las que es muy fácil encontrar tutoriales y ayuda en general. Sin embargo, casi todo está en inglés. Esta introducción no requiere que sepas inglés, pero dado que R está programado en este idioma al final el spanglish será inevitable.

Finalmente, este tutorial está dirigido principalmente a personas que nunca han trabajo con lenguajes de programación y que les interesa conocer cómo usar esta herramienta. Aunque si ya has trabajado con Python, Mathematica o MATLAB, también podrías encontrar aquí referencias útiles.

---

# Instalación

Notas: Aunque en este tutorial no necesitarás instalar nada, puedes hacer dar tus propios pasos al instalar R en tu computadora. Además, te recomendamos ampliamente utilizar **RStudio**.

- R:
  - Ve al sitio [CRAN](https://cran.r-project.org/).
  - Selecciona la descarga en el sistema que utilices y luego da click en _base_
  - Puedes seleccionar el [servidor](https://cran.r-project.org/) que quede cerca de tu país.
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

Notas: Al utilizar R, tu interfaz se verá algo similar a lo que ves en la presentación. La consola se puede utilizar de dos formas: directamente o a través de un script. En cualquiera de los casos podrás escribir vectores, funciones que la máquina procesará, así como comentarios para que el usuario (tú o alguien más) deba saber la lógica de lo que estás haciendo. Estos comentarios inician con el símbolo `#` solamente "imprimirán" el resultado, sin hacer ninguna otra acción.

En cualquier otro caso, R interpretará cualquier caracter como una instrucción para que ejecute algo. Por ejemplo, la función `print()` mostrará lo que pongamos dentro de esa función. En este caso, le diremos a la computadora que imprima `Hola mundo` en la consola.

Esta función no hace mucho, pero R está lleno de otras opciones que lo convierten en una de las opciones más utilizadas en varias ciencias.

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

Notas: Como casi todos los lenguajes de programación, R tiene las funciones básicas de una computadora. Por lo que es muy fácil realizar operaciones matemáticas:

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

- Con `<-` se declaran objetos
- Con `=` se establecen parámetros u objetos locales

Con los objetos podrás hacer toda clase de operaciones, varias de las cuales las abordaremos en este tutorial.

---

# Convenciones de nombres

```r
# Guardados en memoria
un_objeto <- 2

otro_objeto = 5

objetos <- un_objeto - otro_objeto

# Imprimir en consola
objetos
```

Notas: Aunque parezca trivial, nombrar objetos es una cosa muy seria. Puede que en un pequeño script declares una matriz como `matriz1` y luego otra `matriz2` con la confianza de que sepas qué contienen esas matrices, pero conforme pase el tiempo o crezca el proyecto probablemente olvides qué tenía.

Tampoco existe una respuesta obvia para designar la mejor forma de nombrar los objetos, pero ante la duda sigamos la regla de que **programaremos para los humanos, no para la computadora**.

---

# Hora de practicar
