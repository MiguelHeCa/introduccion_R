---
title: 'Capítulo 2: Estructura de datos'
description:
  'En este capítulo te enseñaremos cómo se presentan los vectores y los datos en general'
prev: /chapter1
next: /chapter3
type: chapter
id: 2
---

<exercise id="1" title="Estructura de datos">

  <slides source="diap2_01"></slides>

</exercise>

<exercise id="2" title="Vectores">

  Con lo que más se trabaja en R son los vectores. Esto no debería ser ninguna sorpresa porque en el capítulo 1 dijimos que la unidad básica de R son los vectores. También vimos los tipos de vectores más importantes y utilizamos la función `c()`. Ahora iremos a los detalles importantes.

  En primer lugar, habrás observado que los vectores de longitud 1 (o sea que tienen un solo elemento como `23`) no necesitan ningún tipo de escritura especial, pero cuando son varios elementos siempre se usa la función `c()`, de **c**oncatenar; y por "siempre" me refiero a **siempre**. Si tú escribes `23, 45, 67`, R interpretará que estás invocando a tres objetos distintos en lugar de verlo como un vector que contiene a esos números. Entonces, para que R lo lea como esperamos, escribimos `c(23, 45, 67)`.

  Otra característica particular que es el vector es homogéneo. Esto significa que todos sus elementos serán de la misma clase y tipo. ¿Recuerdas la escala de coerción `logical < integer < double < character`? Bueno, en caso de que el vector contenga elementos con clases mezcladas, R los forzará a la clase de más alta precedencia de los objetos que se encuentren dentro del vector. Por ejemplo: el vector `c(1, "Taco", TRUE)` tiene un objeto entero, un carácter y un lógico. R los transforma a `c("1", "Taco", "TRUE")` conforme a las reglas de coerción. ¿Cómo comprobamos esto? Seguramente adivinaste: con nuestras viejas y confiables funciones `class()` y `typeof`.

  En congruencia con la homogeneidad, los vectores son de **una** sola dimensión. La forma más fácil de verlo es pensando en Excel o Google Sheets. Estos programas son muy utilizados por ver fácilmente las columnas y las filas de cualquier tabla de datos. En el caso de un vector, su equivalente es una columna y su contenido son las filas. De esta forma, R lee al vector `c(1, "Taco", TRUE)` como Excel lo leería en `A1, A2 y A3`. Sin embargo, hasta ahí terminan las similitudes, empezando porque R solo admite homogeneidad y modificar los valores requiere de pasos distintos.

  Ahora pongamos a prueba tus conocimientos sobre vectores.

  A qué clase se convierte el vector `c(NA, FALSE, 37.5)`

<choice>
<opt text='Como NA es infeccioso, todo el vector se convierte a clase lógica'>

No. La clase `logical` ocupa el último lugar dentro de la escala de coerción.

</opt>

<opt text='Lo convierte a double'>

Incorrecto. Esto sería cierto si pidiésemos el tipo de dato, pero estamos preguntando por la clase.

</opt>

<opt text='Se convierte en numérico' correct="true">

¡Correcto! Recordemos que 37.5 claramente es de tipo `double` y por lo tanto pertenece a la clase `numeric`.

</opt>
</choice>
</exercise>

<exercise id="3" title="Matrices">



  <codeblock id="02_03">



  </codeblock>
</exercise>

<exercise id="4" title="Arrays">



  <codeblock id="02_04">



  </codeblock>
</exercise>

<exercise id="5" title="Data frames">



  <codeblock id="02_05">



  </codeblock>
</exercise>

<exercise id="6" title="Listas">



  <codeblock id="02_06">



  </codeblock>
</exercise>

<exercise id="7" title="">

  <slides source=""></slides>

</exercise>