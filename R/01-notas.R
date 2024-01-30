#RStudio proyect
# Abrir un archivo de notas
usethis::create_project("~/rnaseq_2024_notas")
usethis::use_r("01-notas.R")

# Ejercicio 2
usethis::use_r("02-visualizar-mtcars.R")

# Configurar GitHub
## Para poder conectar tu compu con GitHub
usethis::create_github_token() ## Abrirá una página web, escoje un nombre único
## y luego da click en el botón verde al final. Después copia el token
## (son 40 caracteres)
gitcreds::gitcreds_set() ## Ojo, copia el token, no tu password de git!
## Si no, terminaras en la situación descrita en
## https://github.com/r-lib/usethis/issues/1347
