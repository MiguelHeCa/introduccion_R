# Recordemos la orden de los tacos
orden_por_persona <- c(2, 2, 3, 4, 4)
names(orden_por_persona) <- c("Lorena", "Raúl", "Mariana", "Mario", "Tú")
orden_por_persona

# Quiénes pidieron más de tres tacos
orden_por_persona > 3

# Quiénes pidieron dos tacos o más, pero menos de 4
orden_por_persona >= 2 & orden_por_persona < 4
