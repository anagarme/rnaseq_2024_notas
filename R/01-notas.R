
# Crear este proyecto
usethis::create_project("~/rnaseq_2024_notas")

# Hacer un archivo de notas
usethis::use_r("01-notas.R")

# Segundo ejercicio
usethis::use_r("02-visualizar-mtcars.R")

# Conectar el ordenador con GitHub
usethis::create_github_token()
#Recomendación: Introduce el token de 40 caracteres obtenido no tu contraseña
gitcreds::gitcreds_set()

# Configurar mi usuario de GitHub
usethis::edit_git_config()

# Inicializar el repositorio
usethis::use_git()
usethis::use_github()

