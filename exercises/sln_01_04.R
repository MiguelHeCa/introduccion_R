clases_esenciales <- list("Numéricos" = 42,
                          "Enteros" = 5L,
                          "Cadena de caracteres" = "abc",
                          "Factores" = factor("A"),
                          "Lógicos" = FALSE,
                          "Fechas" = as.Date("2019-06-05"))

lapply(clases_esenciales, 
       function(x) {
         paste0(x, " es clase ", class(x), " y tipo ", typeof(x))
         })
