---
type: slides
---

# Recomendaciones

Notas: Antes de terminar, debemos aclarar unas cosas.

---

# Etiquetas de estilo

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

# Convenciones adicionales en R

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
4. Utiliza espacios entre operadores. _Leerestafraseesdifícilsobretodosieslarga_ mientras que _esta frase es más fácil de leer_. Sucede lo mismo con el código.

Estas recomendaciones son parte de las buenas prácticas para reproducir y compartir código. Así, nos evitaremos verdaderos dolores de cabeza y tu _yo_ futuro y tus colegas te lo agradecerán. Todos los ejercicios que te pondremos implementarán estas recomendaciones, por lo que te sugerimos hacer lo mismo cuando hagas tus propios proyectos.

---

# Fin del capítulo

Notas: ¡Felicidades! Haz llegado al final del primer capítulo.
