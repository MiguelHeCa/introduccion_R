---
type: slides
---

# Introducción

Notas: ¡Bienvenido! Soy Miguel y te acompañaré en *tacos de datos* para mostrarte cómo utilizar R como todo un profesional.

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

# Hora de practicar

Nota: ¡Veamos de qué se trata R!
