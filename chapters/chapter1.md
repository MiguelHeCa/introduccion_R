---
title: 'Capítulo 1: Lo básico de R'
description:
  'En este capítulo te daremos una breve reseña de R y te mostraremos los conceptos básicos más importantes que utilizarás al trabajar con datos.'
prev: null
next: /chapter2
type: chapter
id: 1
---

<exercise id="1" title="Introducción" type="slides">

  <slides source="cap1_01_introduccion"></slides>

</exercise>

<exercise id="2" title="Operadores aritméticos">

  Como casi todos los lenguajes de programación, R tiene las funciones básicas de una calculadora. Por lo que es muy fácil realizar operaciones matemáticas:

  - Sumas `+`
  - Restas `-`
  - Multiplicaciones `*`
  - Divisiones `/`
  - Potencias `^`
  - Residuos `%%`

  Para practicar, haremos algo muy sencillo:

  Intenta sumar -1 a -2 y luego sumar 5.
  Luego, multiplica 45 por 6. 
  En la siguiente línea divide su resultado (276) entre 7.
  Sigue con elevar 2 a la quinta potencia.
  Finalmente, calcula el residuo de 12 entre 8.

  <codeblock id="01_02">
  
  - ¿Pusiste (-1) - 2 + 5?
  - Para multiplicaciones se pone `*`
  - Para dividir escribe `/`
  - Para potencias y exponentes se utiliza `^`
  - En los residuos se usa `%%`

  </codeblock>
</exercise>

<exercise id="3" title="Variables">

  Funcionar como calculadora no es suficiente. La mayor parte del tiempo necesitarás guardar números, variables, textos, fórmulas e incluso funciones para poder hacer análisis sofisticados con R. Para ello necesitarás **declarar** un `objeto` _que tenga_ un `valor` **asignado** utilizando el símbolo `<-`, escrito de la siguiente manera:

  ```r
  objeto <- valor
  ```

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

  El símbolo `<-` es el más utilizado para declarar todos los objetos en R. Por ahora no entraremos a detalles, pero es necesario aclarar que otro símbolo de asignación es `=`, el cual también hace lo mismo que `<-` aunque en un enfoque local (no te preocupes si no sabes todavía a qué nos referimos, lo veremos más adelante). Las convenciones de R los distinguen de la siguiente forma:

  - Con `<-` se crean objetos (globalmente)
  - Con `=` se establecen parámetros u objetos (locales)

  Con los objetos podrás hacer toda clase de operaciones, varias de las cuales las abordaremos en este tutorial.

  Para que veamos cómo funcionan, hagamos el siguiente ejercicio:

  Imaginemos que invitaste a tus amigos a casa y todos quieren pedir tacos, y ves que es una gran oportunidad para hacer cuentas con R. Para ello, deberás hacer lo siguiente:

  1. Tu primera tarea es saber cuántos tacos en total serán. A esta taquería le gusta vender todos los tacos a $5. _Lorena_ quiere 6, _Raúl_ quiere 2. _Mariana_ pidió 3. _Mario_, el de buen comer, 11. Al final, _tú_ también pides 4. Guarda esta cantidad en la variable `orden`.
  2. _Lorena_ lo piensa bien y mejor quiere pedir solo 2 tacos de los que originalmente quería. Resta la cantidad que corresponda de la variable `nueva_orden`.
  3. Mario prefiere que quitar los 11 de carne asada que había pedido, solo sean los mismos de Lorena al cuadrado. Calcula esta cantidad y súmala a la nueva orden. Guarda el resultado en la variable `otra_orden`.
  4. Calcula cuánto será en total multiplicando `otra_orden` por el precio de cada taco y guarda el resultado en la variable `total`.
  5. Como estos tú y tus otros 4 amigos son muy compartidos, quieren dividir la cuenta en partes iguales, sin importar si uno come más que otro. Guarda el resultado en `cuenta_por_persona`.
  6. Imprime la cuenta por persona simplemente escribiendo la variable.

  <codeblock id="01_03">

    1. ¿Sumaste 6, 2, 3, 11 y 4?
    2. ¿Restaste 4 tacos de la nueva orden?
    3. ¿Restaste los 11 tacos de Mario y pusiste los 2 de Lorena al cuadrado?
    4. ¿Multiplicaste la orden final por 5?
    5. Recuerda que son 5 amigos en total.
    
  </codeblock>
</exercise>

<exercise id="4" title="Clases y tipos de datos">

  Conocer con qué clase y tipo de datos contamos es esencial para poder extraer información relevante de nuestra área de interés, sobre todo a la hora de hacer reportes, gráficas o modelos.
  
  La unidad básica de datos en R se llama **vector**. Los vectores tienen **clases** (atributos relacionados con funciones y programación orientada a objetos) y **tipos** (la forma en que R identifica el dato). Nota que en el ejercicio anterior utilizamos solamente números para crear objetos, lo cual es bastante útil para realizar diversos cálculos. Además de esto, también podemos guardar cadenas de caracteres (`strings`), numéricos (`numerics`), lógicos (`logicals`) (llamados también **vectores atómicos**) y muchos otros tipos de datos que se les identificará a través de su **clase** y su **tipo**. 

  Para conocer la clase hay que invocar una **función** llamada `class()`. Esta función nos dirá con qué _clase_ de objeto estamos tratando. Por su parte, la función `typeof()` nos dice cómo R almacena en la memoria de la computadora. Por ahora nos enfocaremos a explicar las clases y los tipos más frecuentes con las que te trabajarás la mayor parte del tiempo con R.
  
  Es necesario aclarar que el funcionamiento de las funciones va más allá del propósito de este capítulo, así que no deberás preocuparte mucho por ellas porque las abordaremos en el capítulo 2.

  Por último, solo da click en `Ejecutar Código`para ver la demostración de las clases de cada objeto.

  <codeblock id="01_04">

  No modificaste el código, ¿verdad?

  </codeblock>

</exercise>

<exercise id="5" title="Numéricos">

  En R `base`, el vector de **numérico** es el primero que vemos de los **vectores atómicos**. Tiene clase `numeric` y es tipo `double`. Normalmente se identifica con números con decimales (0.135), notación científica (1e6) y notación hexadecimal (0xabc). También incluye tres tipos especiales de numéricos: los infinitos (`Inf` y `-Inf`) e, irónicamente, el _no es un número_ `NaN` - del inglés _Not a Number_.

  También existe el vector `integer` (entero), el cual requiere menos memoria que el `numeric`. Tanto su clase como tipo son `integer`. Se caracteriza por no llevar decimales. Pero hay que considerar dos cosas acerca de los enteros: se leen y escriben de forma distinta. Si escribes `30`, R automáticamente cataloga ese dato como `numeric`, independientemente de tener decimales o no. Para indicar a la computadora que se trata de un entero, como una ID o un año en particular, habrá que ponerle el sufijo `L`. De esta forma, las funciones `class(30L)`y `typeof(30L)` te dirán que se trata de un `integer`. Por otra parte, cuando se trata de vectores largos que **no** tienen números de decimales, algunos paquetes de R los pueden convertir a enteros por defecto. Estos detalles los veremos más a profundidad cuando veamos cómo manipular e importar _data frames_.

  Para practicar estos conceptos, obtén el tipo y clase de `pi`, tres milésimas en notación científica y tu año de nacimiento como entero.

  <codeblock id="">

  1. ¿Escribiste `pi`?
  2. ¿Pusiste el número, luego la letra `e` y finalmente un signo negativo seguido de la unidad deseada?
  3. ¿Agregaste la letra `L` al final del año?
  
  </codeblock>
</exercise>


<exercise id="6" title="Cadena de caracteres">



  <codeblock id="">



  </codeblock>
</exercise>

<exercise id="7" title="Factores">
  <codeblock id="">
  </codeblock>
</exercise>

<exercise id="8" title="Lógicos">
  <codeblock id="">
  </codeblock>
</exercise>

<exercise id="9" title="Fechas">
  <codeblock id="">
  </codeblock>
</exercise>

<exercise id="10" title="Operadores lógicos">
  <codeblock id="">
  </codeblock>
</exercise>

<exercise id="12" title="Valores faltantes">



  <codeblock id="">



  </codeblock>
</exercise>

<exercise id="12" title="Coerciones">



  <codeblock id="">



  </codeblock>
</exercise>

<exercise id="13" title="Nombres reservados">



  <codeblock id="">



  </codeblock>
</exercise>

<exercise id="14" title="Recomendaciones" type="slides">

  <slides source="cap1_14_recomendaciones"></slides>

</exercise>