# Bioconductor
## Bioconductor es un proyecto open source cuyo objetivo es el desarrollo de software para el análisis de datos biológicos.
## Tiene una amplia cantidad de herramientas para este fin elaboradas en R.
##
## Paquetes de Bioconductor
## Tipos:
##        Software (principal)
##        Annotation facilita trabajar con bases de datos de anotación
##        Experiment Data
##        Workflows: es donde se demuestra como puedes usar varios paquetes
##
## Estructura de los paquetes:
## Para consultar cualquier paquete https://bioconductor.org/packages/<pkg_name>
## Badges:  Para evaluar de manera rápida el paquete podemos fijarnos en esta sección.
##          platforms es para consultar dónde está disponible
##          rank, saber el número de descargas
##          support
##          in Bioc, cuánto tiempo tiene que fue liberado.
##          update último commit (before release es cuando hacen el commit antes de liberarlo)
##          dependecies, las dependencias que apoyaron o desarrollaron el paquete, a veces más dependencias no significa que sea muy bueno.
## Descripción
## Cómo citar el paquete
## Cómo instalar paquetes:
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.18")
## Documentación: Una liga por cada vignette (donde los autores explican cómo usar las diferentes funciones del paquete y en qué orden) en formato PDF o HTML.
## Detalles:  URL donde pueden encontrar el código fuente, URL, licencia.
##
## Ramas de Bioconductor: release y devel
##
## EJERCICIO GRUPAL
## Para el ejercicio utilizamos dos paquetes: MethPed y GenomicPlot.
##
## MethPed (https://bioconductor.org/packages/release/bioc/html/MethPed.html)
## A DNA methylation classifier tool for the identification of pediatric brain tumor subtypes.
## MethPed es un instrumento que permite a los investigadores y al diagnóstico clínico
## analizar muestras individuales para la predicción de subclases de tumores cerebrales pediátricos.
## Este paquete está disponible para cualquier plataforma, tanto en macOS, Linux y Windows. Desde que fue
## liberado en 2016, ha tenido un número de descargas constante. Asimismo revisamos la parte de support
## y por lo general responden las preguntas en un período de días.
## Para la instalación de este paquete es necesario contar con una versión 4.3 o superior de R.
## Versión 1.30.0 (01/02/2024)
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("MethPed")
##
## GenomicPlot (https://bioconductor.org/packages/release/bioc/html/GenomicPlot.html)
## Plot profiles of next generation sequencing data in genomic features
## GenomicPlot es un paquete de Bioconductor que facilita plotear los datos de las tecnologías
## NGS (next generation sequencing) en diversos formatos.
## Hoy en día se encuentra disponible para todas las plataformas, ya que fue liberado desde
## septiembre de 2023, período en el que ha sido descargado asiduamente. Es importante mencionar
## que los desarrolladores han mantenido algunas actualizaciones, la más reciente fue en enero 23 del 2024.
## Para la instalación de este paquete es necesario contar con una versión 4.3 o superior de R.
## Versión 1.0.3 (01/02/2024)
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("GenomicPlot")
