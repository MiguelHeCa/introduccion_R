# R tiene cinco constantes integradas: Letras del alfabeto en mayúsculas y 
# minúsculas (LETTERS y letters), los nombres y de los meses con sus 
# abreviaturas (month.name y month.abb) y nuestra variable que nos interesa en
# este ejercicio: pi. Conozcamos su clase y tipo
constante_pi <- pi
class(constante_pi)
typeof(constante_pi)

# Queremos saber la clase y tipo de tres milésimas en notación científica
milesima <- 3e-3
class(milesima)
typeof(milesima)

# Finalmente, escribe tu año de nacimiento como entero y verifícalo con su
# clase y tipo.
nacimiento <- 1970L
class(nacimiento)
typeof(nacimiento)