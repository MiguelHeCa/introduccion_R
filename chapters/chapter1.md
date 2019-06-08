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

  También existe el vector `integer` (entero), el cual requiere menos memoria que el `numeric`. Tanto su clase como tipo son `integer`. Se caracteriza por no llevar decimales y para es necesario especificar que se trata de un entero. Si escribes `42`, R automáticamente cataloga ese dato como `numeric`, independientemente de tener decimales o no. Para indicar a la computadora que se trata de un entero, como una ID o un año en particular, habrá que ponerle el sufijo `L`. De esta forma, las funciones `class(3e4L)`y `typeof(5L)` te dirán que se trata de un `integer`. Por otra parte, cuando se trata de vectores largos que **no** tienen números con decimales, algunos paquetes de R los pueden convertir a enteros por defecto aunque no tengan la `L`. Estos detalles los veremos más a profundidad cuando veamos cómo manipular e importar _data frames_.

  Para practicar estos conceptos, obtén el tipo y clase de `pi`, tres milésimas en notación científica y tu año de nacimiento como entero.

  <codeblock id="01_05">

  1. ¿Escribiste `pi`?
  2. ¿Pusiste el número, luego la letra `e` y finalmente un signo negativo seguido de la unidad deseada?
  3. ¿Agregaste la letra `L` al final del año?
  
  </codeblock>
</exercise>


<exercise id="6" title="Cadena de caracteres">

El tercer **vector atómico** es la cadena de caracteres o `string character` en donde se usa cualquier forma de texto. Son de clase y tipo `character`. Para escribirlas se usan comillas dobles `"` o comillas simples `'`, sin ningún orden en particular. Por ejemplo:

- Al escribir `variable` en la consola, R buscará un objeto con ese nombre. Pero si escribes `"variable"` o `'variable'`, solo imprimirás la cadena con ese nombre. Nota que R imprime los vectores con comillas dobles, aunque esto no afecta al objeto en sí.

En los vectores `character` prácticamente puedes meter lo que sea, desde nombres de categorías hasta libros enteros.

También puedes usar comillas simples dentro de las comillas dobles y viceversa. Por ejemplo, si en una función queremos avisar de un error cuando no contenga la variable `x` podemos escribir `"Error: recuerda incluir la variable 'x'."`.

En algunos casos también identifica estos vectores con acentos graves `` ` ``. Esto suele suceder en nombres de columnas que contienen espacios, son números o están dentro de fórmulas.

Estos vectores tienen sus complejidades, como la inclusión de caracteres especiales (`\`) y expresiones regulares (_regular expressions_ o _regex_), que requerirían su propio curso (no por nada existe la rama de _procesamiento de texto_). Dominar este tipo de vector es fascinante pero muy demandante. Por ahora quedémonos con lo necesario.

Para probar este nuevo conocimiento, escribe la ciudad donde naciste y convierte las 3 milésimas del ejercicio anterior en `character`. Comprueba sus clases y sus tipos.

  <codeblock id="01_06">

  ¿Escribiste tu respuesta entre comillas y escribiste las funciones de clase y tipo?

  </codeblock>
</exercise>

<exercise id="7" title="Lógicos">

  El cuarto **vector atómico** pertenece al de clase y tipo `logical`. Estos son específicamente las constantes verdadero `TRUE`y falso `FALSE`. Solo escriben con mayúsculas o con la inicial `T` y `F`. 

  Su uso es esencial para toda clase de funciones, clasificaciones y modelos. Como es normal en lenguajes de programación, estos vectores pueden _forzarse_ para convertirse en 0 para `FALSE` y 1 para `TRUE`. Esto significa que los `logical` se comportan como `integer`:

  ```
  > TRUE + TRUE + FALSE + TRUE
  [1] 3
  ```

  Al realizar pruebas y bucles, los `logical` serán los que determinen el comportamiento de determinada tarea.

  Comprueba la clase de `F`y luego comprueba la clase y tipo de `TRUE * FALSE`:

  <codeblock id="01_07">

  ¿Guardaste `TRUE * FALSE` en el objeto `logical`?

  </codeblock>
</exercise>

<exercise id="8" title="Factores">

  Los factores son un tipo de dato particular de R en el que combina cadenas de caracteres con enteros para trabajar con categorías. Es especialmente útil en encuestas o cualquier posible valor categórico en un orden específico. Su clase es `factor` pero su tipo es `integer`. Esto se debe a que el factor además de valores, contiene niveles (los cuales R siempre los guarda en forma de enteros) que dirán cuál es el orden de los valores o factores.

  Veamos el siguiente ejemplo:

  ```
  ># Cadena de caracteres
  > c("Bueno", "Maol", "Regular")
  [1] "Bueno"   "Maol"    "Regular"

  ># Factores
  > factor(c("Maol", "Bueno", "Regular"), levels = c("Malo", "Regular", "Bueno"))
  [1] <NA>    Bueno   Regular
  Levels: Malo Regular Bueno
  ```

  En la cadena de caracteres es muy fácil que ocurran las erratas. En este ejemplo de 3 opciones es fácil verlo, pero en datos con millones de observaciones sería un poquito más difícil detectar errores sutiles. En el caso de los factores, los niveles son lo que dicta bajo qué categoría caerán los valores y en caso de que ninguno de los valores corresponda a estos niveles, R simplemente lo marcará como un valor faltante `NA`.

  Veamos este otro ejemplo:

  ```
  ># Cadena de caracteres
  > sort(c("Uno", "Dos", "Tres"))
  [1] "Dos"  "Tres" "Uno" 

  ># Factores
  > sort(factor(c("Tres", "Dos", "Uno"), levels = c("Uno", "Dos", "Tres")))
  [1] Uno  Dos  Tres
  Levels: Uno Dos Tres
  ```

  Sabemos que después del uno sigue el dos y luego el tres. Si ordenamos una cadena de caracteres, R automáticamente lo hace por orden alfabético, lo cual es incorrecto para nosotros. En cambio, al ordenar los factores, R recurrirá a los niveles como referencia para saber cómo ordenar los valores y así obtenemos el resultado que deseamos.

  Existe una desventaja con respecto a los factores: requieren más memoria y en ocasiones pueden complicar algunas labores, particularmente las que involucran procesamiento de texto. Al importar datos con R `base`, cualquier texto será importado como `factor`, independientemente de su longitud y estos son convertidos a su vez en niveles. Regresando al primer ejemplo, `"Maol" y "Malo"` serían niveles contenidos en el vector y no queremos eso. Otro caso donde resulta mejor no utilizar factores es con categorías sin un orden en particular, por ejemplo el sexo o el nombre de colores.

  Ahora veamos si los factores quedaron suficientemente claros. 
  
  Tenemos un vector con los siguientes meses `"Abril", "Septiembre", "Enero", "Julio"` y sabemos que los niveles están en el orden que todos conocemos de los meses. ¿Cuál código sería el correcto si queremos que aparezcan ordenados?

<choice>
<opt text='sort(c("Abril", "Septiembre", "Enero", "Julio"), levels = c("Enero", "Abril", "Julio", "Septiembre"))'>

Esta no es la correcta porque estás ordenando cadena de caracteres (nota que no está `factor`). La consola te arrojará un error diciéndote que el argumento `levels` no fue utilizado.

</opt>

<opt text='sort(factor(c("Abril", "Septiembre", "Enero", "Julio"), levels = c("Enero", "Abril", "Julio", "Septiembre")))' correct="true">

¡Buen trabajo! Aquí tienes tu primera aproximación con vectores largos, en donde es obligatorio usar `c()` siempre. Esto lo exploraremos a detalle en el capítulo 2.

</opt>

<opt text='sort(factor(c("Abril", "Septiembre", "Enero", "Julio"), levels = c("Ene", "Abr", "Jul", "Sep")))'>

Incorrecto. Esta opción solo te regresará valores faltantes porque los valores no corresponden con los niveles.

</opt>
</choice>
 
</exercise>

<exercise id="9" title="Fecha y hora">

  Aunque en todo momento usamos fechas y horas, trabajar con ellas puede ser sorprendentemente complicado y normalmente querrás trabajar con paquetes como `lubridate`. Primero empecemos desde la convención para escribir fechas. 
  
  Seguramente habrás notado que existen formas muy distintas de expresar una fecha. En Estados Unidos se suele poner **Mes día, año**, mientras que en América Latina y gran parte del mundo se escribe **día-mes-año**. Es más, algunas veces encuentras fechas con nombres completos, otros con números y otros con abreviaturas. En datos de la vida real este desorden puede encontrarse hasta en un solo archivo. Afortunadamente, la norma [https://es.wikipedia.org/wiki/ISO_8601](ISO 8601) se estableció para evitar este tipo de problemas. La lógica es que la notación identifique los elementos de mayor a menor: `[AAAA]-[MM]-[DD]` para fechas, `hh:mm:ss.ssss` para tiempo y `Z` para la zona horaria. Esta es la norma que los lenguajes de programación utilizan, por lo que las fechas y el tiempo tendrán este formato.

  Ahora, para vectores que contienen solo fechas existe la clase `Date`. Esta clase está construida sobre datos dobles, es decir, de tipo `double`. Además, de la misma forma que los factores, hay que crearlos explícitamente.

  Por ejemplo:
  ```r
  > Sys.Date()
  [1] "2019-06-08"
  > class(Sys.Date())
  [1] "Date"
  > typeof(Sys.Date())
  [1] "double"
  ```
  En este caso, la función `Sys.Date()` extrae la fecha del sistema en forma de `double` y lo convierte en clase `Date`.

  Por otra parte, para fechas y tiempo existe una clase especial que se llama `POSIXct`. La primera parte, `POSIX`, es el acrónimo de _Interfaz de Sistemas Operativos Portátil_ en inglés (si te parece que es un nombre rarísimo, bienvenido al mundo de la programación). El sufijo `ct` corresponde al _tiempo de calendario_ en inglés. Al igual que los objetos `Date`, este está construido sobre dobles cuyos valores corresponden a los segundos transcurridos desde el primero de enero de 1970. Esto significa que todas las fechas anterior a 1970 tendrán un `double` negativo.

  También existe la clase `POSIXlt`, cuyo sufijo `lt` corresponde a _tiempo local_ en inglés, pero es un poco más complicado de usar y no necesitamos ver eso por ahora. Por lo pronto veamos cómo se construye un objeto `POSIXct` y comprobemos su clase y tipo:

  ```r
  > ahora <- Sys.time()
  > ahora
  [1] "2019-06-08 12:01:54 CDT"

  > class(ahora)
  [1] "POSIXct" "POSIXt" 

  > typeof(ahora)
  [1] "double"

  > unclass(ahora)
  [1] 1560013315
  ```
  La función `unclass()` muestra el número `double` que le corresponde al objeto `ahora`. Lo que significa que han pasado más de mil millones de segundos desde 1970.

  Nota que existen otras formas de presentar fechas. La función `date()` lo mismo que un objeto `POSIXct` en forma de cadena de caracteres.

  También es posible extraer por separado cada elemento de las fechas, modificar su presentación y realizar cálculos aritméticos.

  Ahora veamos: qué clase de objeto tendrás si escribes en las consola `"2019-04-11 12:00 UTC"`:

<choice>
<opt text='clase Date'>

Esta no es la opción correcta. La clase Date solo acepta fechas. No incluye ni tiempo ni zona horaria.

</opt>

<opt text='clase POSIXct'>

Incorrecto. Aunque el formato corresponde a esta clase, hace falta algo muy importante.

</opt>

<opt text='clase double'>

Incorrecto. La **clase** doble solamente se observa con números. Las clases `Date` y `POSIXct` son de **tipo** doble.

</opt>

<opt text='clase character' correct="true">

¡Correcto!. Las fechas se tienen que definir explícitamente, de lo contrario solo son cadenas de caracteres.

</opt>

</choice>
 
</exercise>

<exercise id="10" title="Operadores lógicos">
  <codeblock id="">
  </codeblock>
</exercise>

<exercise id="11" title="Valores faltantes">



  <codeblock id="">



  </codeblock>
</exercise>

<exercise id="12" title="Coerciones">



  <codeblock id="">



  </codeblock>
</exercise>

<exercise id="13" title="Nombres reservados">

  Hasta ahora vimos que podemos crear toda clase de objetos con cualquier nombre, clase y tipo. No obstante, existen **palabras reservadas** que no se pueden modificar. Estas son:

  ```r
  # Constantes
  TRUE, FALSE, NULL, Inf, NaN, NA, NA_integer_, NA_real_, NA_complex_, NA_character_,

  # Funciones
  if, else, repeat, while, function, for, in, next, break

  ```

  De esta forma se evita que el código se convierta en un caos si en algún momento se llegara a cambiar la naturaleza de una constante o una función.

  Veamos qué hace R cuando intentas crear un objeto `NA` que contenga `No aplica`. Debería arrojarte un error indicándote que es inválido lo que escribiste:

  <codeblock id="01_13">

  ¿Escribiste correctamente `NA`?

  </codeblock>
</exercise>

<exercise id="14" title="Recomendaciones" type="slides">

  <slides source="cap1_14_recomendaciones"></slides>

</exercise>