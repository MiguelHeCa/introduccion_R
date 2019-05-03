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

<exercise id="2" title="Haciendo cuentas">

  Imaginemos que invitaste a tus amigos a casa y todos quieren pedir tacos, y ves que es una gran oportunidad para hacer cuentas con R. Deberás hacer lo siguiente:

  1. Tu primera tarea es saber cuántos tacos en total serán. A esta taquería le gusta vender todos los tacos a $5. _Lorena_ quiere 8 de carne asada, _Raúl_ quiere 3 de pastor y 2 de carne asada. _Mariana_ pidió 3 de tripa. _Mario_, al que le dicen el cuadrado, 6 de carne asada. Al final, _tú_ también pides 3 de pastor y 1 de carne asada. Guarda esta cantidad en la variable `orden` y luego imprime la variable en la consola.
  2. _Lorena_ lo piensa bien y mejor quiere pedir solo 2 tacos de los que originalmente quería. Resta la cantidad que corresponda de la variable `nueva_orden`.
  3. Mario, el cuadrado, prefiere que quitar los 6 de carne asada que había pedido, solo sean los mismos de Lorena al cuadrado. Calcula esta cantidad y súmala a la nueva orden. Guarda el resultado en la variable `otra_orden`.
  4. Calcula cuánto será en total multiplicando `otra_orden` por el precio de cada taco y guarda el resultado en la variable `total`.
  5. Como estos tú y tus otros 4 amigos son muy compartidos, quieren dividir la cuenta en partes iguales, sin importar si uno come más que otro. Guarda el resultado en `cuenta_por_persona`.
  6. Resulta que te tomas muy en serio el dicho de "cuentas claras, amistadas largas", por lo que enseñas a todos el contenido de las variables que hiciste imprimiéndolas en la consola. Para hacer esto, solo escribe el nombre de cada variable para **imprimir**.

<codeblock id="01_02">

1. ¿Sumaste 8 de carne asada, 3 de pastor, 2 de carne asada, 3 de tripa, 6 de carne asada, 3 de pastor y 1 de carne asada?
2. ¿Restaste 6 tacos?
3. ¿Restaste los 6 tacos de Mario y pusiste los 2 de Lorena al cuadrado?
4. ¿Multiplicaste la otra orden por 5?
5. Recuerda que son 5 amigos en total.

</codeblock>

</exercise>

<exercise id="3" title="First steps">

This is a code exercise. The content can be formatted in simple Markdown – so
you can have **bold text**, `code` or [links](https://spacy.io) or lists, like
the one for the instructions below.

- These are instructions and they can have bullet points.
- The code block below will look for the files `exc_01_03`, `solution_01_03` and
  `test_01_03` in `/exercises`.

<codeblock id="01_03">

This is a hint.

</codeblock>

</exercise>
